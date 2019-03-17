#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { depr_init = 0 ; comment = 0 }
/open .* ColorSelection/ { depr_init = 1 }
/public .* ColorSelection/ { depr_init = 1 }
/public .* HSV/ { depr_init = 1 }
/open .* HSV/ { depr_init = 1 }
/open .* HSV/ { depr_init = 1 }
/func getColumnHeaderCells/ { comment = 1 }
/func getRowHeaderCells/ { comment = 1 }
/ init.. {/ {
	if (depr_init) {
		printf("@available(*, deprecated) ")
		depr_init = 0
	}
}
/ init. title:/ {
	if (depr_init) {
		printf("@available(*, deprecated) ")
		depr_init = 0
	}
}
/^open class RadioButton:/ {
	print
	print "    /// Convenience constructor for creating a RadioButton with a text label,"
	print "    /// creating a new group."
	print "    ///"
	print "    /// - Parameter label: the label to use for the button"
	print "    convenience init(label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_button_new_with_label(nil, label)"
	print "        self.init(cast(rv))"
	print "    }"
	print ""
	print "    /// Convenience constructor for creating a RadioButton with a text label"
	print "    /// that contains menomics creates a new group.  Underscores in `label`"
	print "    /// indicate the mnemonic for the button."
	print "    ///"
	print "    /// - Parameter label: the label (including mnemonic) to use for the button"
	print "    convenience init(mnemonic label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_button_new_with_mnemonic(nil, label)"
	print "        self.init(cast(rv))"
	print "    }"
	print ""
	next
}
/^open class RadioMenuItem:/ {
	print
	print "    /// Convenience constructor for creating a RadioMenuItem with a text label,"
	print "    /// creating a new group."
	print "    ///"
	print "    /// - Parameter label: the label to use for the button"
	print "    convenience init(label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_menu_item_new_with_label(nil, label)"
	print "        self.init(cast(rv))"
	print "    }"
	print ""
	print "    /// Convenience constructor for creating a RadioMenuItem with a text label"
	print "    /// that contains menomics and creates a new group.  Underscores in `label`"
	print "    /// indicate the mnemonic for the button."
	print "    ///"
	print "    /// - Parameter label: the label (including mnemonic) to use for the button"
	print "    convenience init(mnemonic label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_menu_item_new_with_mnemonic(nil, label)"
	print "        self.init(cast(rv))"
	print "    }"
	print ""
	next
}
/^open class RadioToolButton:/ {
	print
	print "    /// Convenience constructor for creating a RadioToolButton group."
	print "    convenience init() {"
	print "        let rv = gtk_radio_tool_button_new(nil)"
	print "        self.init(cast(rv))"
	print "    }"
	print ""
	next
}
// {
	if (comment) {
		printf("// ")
	}
	print
}
/^    }$/ { comment = 0 }
