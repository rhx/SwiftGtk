#!/usr/bin/awk
#
# Patch the generated wrapper Swift code to handle special cases
#
BEGIN { comment = 0; class = 0; overr = 0; }
/^open class / { class = 1 }
/^}$/ { class = 0 }
/Creates a new toggle button/ { if (class) overr = 1 }
/Creates a new GtkModelButton/ { if (class) overr = 1 ; sub("GtkModelButton", "`GtkModelButton`") }
/Creates a new `GtkAboutDialog`\.$/ { if (class) overr = 1 }
/Creates a new `GtkAssistant`/ { if (class) overr = 1 }
/Creates a new `GtkCellRendererAccel`/ { if (class) overr = 1 }
/Creates a new `GtkCellRendererCombo`/ { if (class) overr = 1 }
/Creates a new `GtkCellRendererSpin`/ { if (class) overr = 1 }
/Creates a new `GtkCheckMenuItem`/ { if (class) overr = 1 }
/Creates a new `GtkComboBoxText`/ { if (class) overr = 1 }
/Creates a new `GtkEmojiChooser`/ { if (class) overr = 1 }
/Creates a new `GtkImageMenuItem` with an empty label/ { if (class) overr = 1 }
/Creates a new `GtkImageMenuItem` containing a label/ { if (class) overr = 1 }
/Creates a new `GtkMenuToolButton`/ { if (class) overr = 1 }
/Creates a new `GtkSeparatorMenuItem`/ { if (class) overr = 1 }
/Create a new `GtkSeparatorToolItem`/ { if (class) overr = 1 }
/Creates a new `GtkTearoffMenuItem`/ { if (class) overr = 1 }
/Creates a new `GtkToggleAction`/ { if (class) overr = 1 }
/Creates a new `GtkToggleButton`/ { if (class) overr = 1 }
/Creates a new `GtkToggleToolButton`/ { if (class) overr = 1 }
/Creates a new `GtkRecentAction`/ { ostock = 1 }
/Creates a new dialog box/ { if (class) if (class) overr = 1 }
/Create a special-purpose sorter/ { if (class) if (class) overr = 1 }
/^    .*@inlinable public init[<(]/ {
	if (overr) {
		gsub("public", "override public")
		overr = 0
	}
}
// {
	if (comment) {
		printf("// ")
	}
	print
}
/^    }$/ { comment = 0 ; overr = 0 ; ostock = 0 }
