#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { etpInit = 0 ; vaptrptr = 0 ; longdouble = 0 }
/public convenience init.T: ErrorTypeProtocol./ {
	etpInit = 1
	print "    /// Convenience copy constructor, creating a unique copy"
	print "    /// of the passed in Error.  Needs to be freed using free()"
	print "    /// (automatically done in deinit if you use ErrorType)."
}
/self.init.other.ptr./ {
	if (etpInit) {
		print "	self.init(g_error_copy(other.ptr))"
		etpInit = 0
		next
	}
}
/no reference counting for GError, cannot ref/ { next }
/no reference counting for GError, cannot unref/ {
	print "	    g_error_free(error_ptr)"
	next
}
/ -> GIConv {/, /^}/ {
	sub(/GIConv {/,"GIConv? {")
	sub(/return rv/,"return rv == GIConv(bitPattern: -1) ? nil : rv")
}
/UnsafeMutablePointer.CVaListPointer/ {
	vaptrptr = 1
	print "#if !os(Linux)"
}
/Pointer<va_list>/ {
	vaptrptr = 1
	print "#if !os(Linux) && !arch(arm64)"
}
/CLongDouble/ {
	longdouble = 1
	print "#if !(os(Linux) && arch(arm64))"
}
/^$/ {
	if (vaptrptr || longdouble) {
		print "#endif"
		longdouble = 0
		vaptrptr = 0
	}
}
/\/\/\// {
	if (vaptrptr || longdouble) {
		print "#endif"
		longdouble = 0
		vaptrptr = 0
	}
}
// { print }
