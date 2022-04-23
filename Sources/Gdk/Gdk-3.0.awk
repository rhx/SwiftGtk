#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { property_state = 0; }
/var state: PropertyState / { property_state = 1; }
/let rv = _ptr.pointee.state/ {
	if (property_state) {
		gsub("_ptr.pointee.state", "PropertyState(_ptr.pointee.state)")
	}
}
/_ptr.pointee.state = newValue/ {
	if (property_state) {
		property_state = 0;
		gsub("newValue", "newValue.rawValue")
	}
}
// {
	print
}
