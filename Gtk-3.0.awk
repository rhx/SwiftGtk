#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { depr_init = 0 ; comment = 0 ; slist = 0 ; overr = 0 ; ostock = 0 ;
        no_fields = 0 ; close_comment = 0; icon_size = 0 ;
}
/Creates a new `GtkRecentChooserMenu` widget\.$/ { overr = 1 }
/a swatch representing the current selected color. When the button/ { overr = 1 }
#/Creates a new dialog box/ { overr = 1 }
/Creates a new font picker widget/ { overr = 1 }
/Creates a new toggle button/ { overr = 1 }
/Creates a new GtkModelButton/ { overr = 1 ; sub("GtkModelButton", "`GtkModelButton`") }
/Creates a new `GtkAboutDialog`\.$/ { overr = 1 }
/Creates a new `GtkCellRendererAccel`/ { overr = 1 }
/Creates a new `GtkCellRendererCombo`/ { overr = 1 }
/Creates a new `GtkCellRendererSpin`/ { overr = 1 }
/Creates a new `GtkCheckButton`/ { overr = 1 }
/Creates a new `GtkCheckMenuItem`/ { overr = 1 }
/Creates a new `GtkComboBoxText`/ { overr = 1 }
/Creates a new `GtkImageMenuItem` with an empty label/ { overr = 1 }
/Creates a new `GtkImageMenuItem` containing a label/ { overr = 1 }
/Creates a new `GtkMenuButton`/ { overr = 1 }
/Creates a new `GtkMenuToolButton`/ { overr = 1 }
/Creates a `GtkSearchEntry`/ { overr = 1 }
/Creates a new `GtkSeparatorMenuItem`/ { overr = 1 }
/Create a new `GtkSeparatorToolItem`/ { overr = 1 }
/Creates a new `GtkTearoffMenuItem`/ { overr = 1 }
/Creates a new `GtkToggleAction`/ { overr = 1 }
/Creates a new `GtkToggleButton`/ { overr = 1 }
/Creates a new `GtkToggleToolButton`/ { overr = 1 }
/Creates a new `GtkRecentAction`/ { ostock = 1 }
/open .* ColorSelection/ { depr_init = 1 }
/public .* ColorSelection/ { depr_init = 1 }
/public .* HSV/ { depr_init = 1 }
/open .* HSV/ { depr_init = 1 }
/open .* HSV/ { depr_init = 1 }
/func getColumnHeaderCells/ { comment = 1 }
/func getRowHeaderCells/ { comment = 1 }
/get.* -> GtkIconSize {$/ { icon_size = 1; }
/: GtkIconSize {$/ { icon_size = 1; }
/let rv = / { icon_size = 0; }
/let rv: Int / {
	if (icon_size) {
		gsub("Int", "GtkIconSize")
	}
}
/    return Int.rv.$/ {
	if (icon_size) {
		icon_size = 0;
		gsub("Int.rv.", "rv")
	}
}
/return/ { icon_size = 0; }
/extension _MountOperationHandlerIfaceProtocol/ { no_fields = 1; }
/extension _MountOperationHandlerProxyClassProtocol/ { no_fields = 1; }
/extension _MountOperationHandlerSkeletonClassProtocol/ { no_fields = 1; }
/^    var [a-z]/ {
	if (no_fields) {
		print "#if false"
		no_fields = 0;
		close_comment = 1;
	}
}
/^    }$/ {
	if (close_comment) {
		print
		print "#endif"
		close_comment = 0;
		next
	}
}
/^[^ ]/ { slist = 0 }
/ UnsafeMutablePointer<GSList>! {/ {
	slist = 1
	gsub("UnsafeMutablePointer.GSList..", "SListRef!")
}
/return cast.rv.$/ {
	if (slist) {
		gsub("cast.rv.", "cast(rv.map { SListRef($0) })")
	}
}
/cast.newValue./ {
	if (slist) {
		gsub("cast.newValue.", "cast(newValue.map { $0.ptr })")
		slist = 0
	}
}
/^    }$/ { slist = 0 }
/^    public init[(]/ {
	if (overr) {
		printf("override ")
		overr = 0
	}
}
/^    public init.*stock_id: UnsafePointer<gchar>[)]/ {
	if (ostock) {
		printf("override ")
		ostock = 0
	}
}
/ init.. {/ {
	if (depr_init) {
		printf("    @available(*, deprecated)\n")
		depr_init = 0
	}
}
/ init. title:/ {
	if (depr_init) {
		printf("    @available(*, deprecated)\n")
		depr_init = 0
	}
}
/^open class RadioButton:/ {
	print
	print "    /// Constructor for creating a RadioButton with a text label,"
	print "    /// creating a new group."
	print "    ///"
	print "    /// - Parameter label: the label to use for the button"
	print "    public override init(label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_button_new_with_label(nil, label)"
	print "        super.init(cast(rv))"
	print "    }"
	print ""
	print "    /// Constructor for creating a RadioButton with a text label"
	print "    /// that contains menomics creates a new group.  Underscores in `label`"
	print "    /// indicate the mnemonic for the button."
	print "    ///"
	print "    /// - Parameter label: the label (including mnemonic) to use for the button"
	print "    public override init(mnemonic label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_button_new_with_mnemonic(nil, label)"
	print "        super.init(cast(rv))"
	print "    }"
	print ""
	next
}
/^open class RadioMenuItem:/ {
	print
	print "    /// Constructor for creating a RadioMenuItem with a text label,"
	print "    /// creating a new group."
	print "    ///"
	print "    /// - Parameter label: the label to use for the button"
	print "    public override init(label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_menu_item_new_with_label(nil, label)"
	print "        super.init(cast(rv))"
	print "    }"
	print ""
	print "    /// Constructor for creating a RadioMenuItem with a text label"
	print "    /// that contains menomics and creates a new group.  Underscores in `label`"
	print "    /// indicate the mnemonic for the button."
	print "    ///"
	print "    /// - Parameter label: the label (including mnemonic) to use for the button"
	print "    public override init(mnemonic label: UnsafePointer<gchar>) {"
	print "        let rv = gtk_radio_menu_item_new_with_mnemonic(nil, label)"
	print "        super.init(cast(rv))"
	print "    }"
	print ""
	next
}
/^open class RadioToolButton:/ {
	print
	print "    /// Convenience constructor for creating a RadioToolButton group."
	print "    public override init() {"
	print "        let rv = gtk_radio_tool_button_new(nil)"
	print "        super.init(cast(rv))"
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
/^    }$/ { comment = 0 ; overr = 0 ; ostock = 0 }
