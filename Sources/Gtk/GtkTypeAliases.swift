import CGtk

/// Free the memory allocated for the given pointer.
///
/// This function calles the `free()` function provided
/// by the system.
///
/// - Note: The only reason this function exists is to avoid collisions with gtk  object`free()` methods.
///
/// - Parameter ptr: The pointer to free.
@usableFromInline
func systemFree(_ ptr: UnsafeMutableRawPointer?) {
    free(ptr)
}

// Private structs not exported but needed for public pointers
public typealias GtkArrowAccessiblePrivate = _GtkArrowAccessiblePrivate
public typealias GtkBooleanCellAccessiblePrivate = _GtkBooleanCellAccessiblePrivate
public typealias GtkButtonAccessiblePrivate = _GtkButtonAccessiblePrivate
public typealias GtkCellAccessibleParent = _GtkCellAccessibleParent
public typealias GtkCellAccessiblePrivate = _GtkCellAccessiblePrivate
public typealias GtkCheckMenuItemAccessiblePrivate = _GtkCheckMenuItemAccessiblePrivate
public typealias GtkComboBoxAccessiblePrivate = _GtkComboBoxAccessiblePrivate
public typealias GtkContainerAccessiblePrivate = _GtkContainerAccessiblePrivate
public typealias GtkContainerCellAccessiblePrivate = _GtkContainerCellAccessiblePrivate
public typealias GtkEntryAccessiblePrivate = _GtkEntryAccessiblePrivate
public typealias GtkEntryIconAccessible = _GtkEntryIconAccessible
public typealias GtkExpanderAccessiblePrivate = _GtkExpanderAccessiblePrivate
public typealias GtkFlowBoxAccessiblePrivate = _GtkFlowBoxAccessiblePrivate
public typealias GtkFrameAccessiblePrivate = _GtkFrameAccessiblePrivate
public typealias GtkIconViewAccessiblePrivate = _GtkIconViewAccessiblePrivate
public typealias GtkImageAccessiblePrivate = _GtkImageAccessiblePrivate
public typealias GtkImageCellAccessiblePrivate = _GtkImageCellAccessiblePrivate
public typealias GtkLabelAccessiblePrivate = _GtkLabelAccessiblePrivate
public typealias GtkLevelBarAccessiblePrivate = _GtkLevelBarAccessiblePrivate
public typealias GtkLinkButtonAccessiblePrivate = _GtkLinkButtonAccessiblePrivate
public typealias GtkListBoxAccessiblePrivate = _GtkListBoxAccessiblePrivate
public typealias GtkLockButtonAccessiblePrivate = _GtkLockButtonAccessiblePrivate
public typealias GtkMenuAccessiblePrivate = _GtkMenuAccessiblePrivate
public typealias GtkMenuButtonAccessiblePrivate = _GtkMenuButtonAccessiblePrivate
public typealias GtkMenuItemAccessiblePrivate = _GtkMenuItemAccessiblePrivate
public typealias GtkMenuShellAccessiblePrivate = _GtkMenuShellAccessiblePrivate
public typealias GtkNotebookAccessiblePrivate = _GtkNotebookAccessiblePrivate
public typealias GtkPanedAccessiblePrivate = _GtkPanedAccessiblePrivate
public typealias GtkProgressBarAccessiblePrivate = _GtkProgressBarAccessiblePrivate
public typealias GtkRadioButtonAccessiblePrivate = _GtkRadioButtonAccessiblePrivate
public typealias GtkRadioMenuItemAccessiblePrivate = _GtkRadioMenuItemAccessiblePrivate
public typealias GtkRangeAccessiblePrivate = _GtkRangeAccessiblePrivate
public typealias GtkRendererCellAccessiblePrivate = _GtkRendererCellAccessiblePrivate
public typealias GtkScaleAccessiblePrivate = _GtkScaleAccessiblePrivate
public typealias GtkScaleButtonAccessiblePrivate = _GtkScaleButtonAccessiblePrivate
public typealias GtkScrolledWindowAccessiblePrivate = _GtkScrolledWindowAccessiblePrivate
public typealias GtkSpinButtonAccessiblePrivate = _GtkSpinButtonAccessiblePrivate
public typealias GtkSpinnerAccessiblePrivate = _GtkSpinnerAccessiblePrivate
public typealias GtkStatusbarAccessiblePrivate = _GtkStatusbarAccessiblePrivate
public typealias GtkSwitchAccessiblePrivate = _GtkSwitchAccessiblePrivate
public typealias GtkTextCellAccessiblePrivate = _GtkTextCellAccessiblePrivate
public typealias GtkTextViewAccessiblePrivate = _GtkTextViewAccessiblePrivate
public typealias GtkThemingEnginePrivate = _GtkThemingEnginePrivate
public typealias GtkToggleButtonAccessiblePrivate = _GtkToggleButtonAccessiblePrivate
public typealias GtkToplevelAccessiblePrivate = _GtkToplevelAccessiblePrivate
public typealias GtkTreeViewAccessiblePrivate = _GtkTreeViewAccessiblePrivate
public typealias GtkWidgetAccessiblePrivate = _GtkWidgetAccessiblePrivate
public typealias GtkWindowAccessiblePrivate = _GtkWindowAccessiblePrivate

// @convention(c) (UnsafeMutablePointer<_GtkWidget>?, UnsafeMutableRawPointer?) -> ()
//public typealias GtkCallback = CGtk.GtkCallback
