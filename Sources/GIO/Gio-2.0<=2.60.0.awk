#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { immutable = 0 }
/additional application actions/ {
	immutable = 1
}
/func listActions.. .. UnsafeMutablePointer<UnsafeMutablePointer<gchar>/ {
	if (immutable == 1) {
		immutable = 0
		gsub("UnsafeMutablePointer<UnsafeMutablePointer<gchar>", "UnsafePointer<UnsafePointer<gchar>")
		print
		next
	}
}
/^$/ {
	immutable = 0
}
// { print }
