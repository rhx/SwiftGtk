#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { dateDay = 0 }
/public typealias DateDay / {
	print
	if (dateDay) { next }
	dateDay = 1
	print ""
	print "public typealias NativeSocketAddress = GNativeSocketAddress"
	print "public typealias NativeSocketAddressPrivate = GNativeSocketAddressPrivate"
	print "public typealias NativeSocketAddressClass = GNativeSocketAddressClass"
	print ""
	next
}
// { print }
