#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { depr_init = 0 }
/open .* ColorSelection/ { depr_init = 1 }
/public .* ColorSelection/ { depr_init = 1 }
/public .* HSV/ { depr_init = 1 }
/open .* HSV/ { depr_init = 1 }
/public.* init.. {/ {
	if (depr_init) {
		printf("@available(*, deprecated) ")
		depr_init = 0
	}
}
/public.* init. title:/ {
	if (depr_init) {
		printf("@available(*, deprecated) ")
		depr_init = 0
	}
}
// { print }
