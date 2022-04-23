s/-> GdkAtom {/-> GdkAtom! {/g
s/: GdkAtom/: GdkAtom!/g
s/UnsafeMutablePointer<GdkAtom>/GdkAtom/
s/targets: UnsafePointer<GdkAtom>/targets: UnsafePointer<GdkAtom?>/
s/GdkAtom!.self/_GdkAtom.self/
s/actual_property_type: AtomT/actual_property_type: UnsafeMutablePointer<GdkAtom?>/
s/Xproperty: GdkAtom!, type: GdkAtom!/property: AtomT!, type: AtomT!/
s/\(propertyGet.*\)window: WindowT, property: AtomT!, type: AtomT!/\1window: WindowT, property: UnsafeMutablePointer<GdkAtom?>, type: AtomT!/
s/selectionPropertyGet<AtomT: AtomProtocol, WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>.>!, propType: AtomT/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propertyType: UnsafeMutablePointer<GdkAtom?>!/
s/selectionPropertyGet<AtomT: AtomProtocol>(data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propType: AtomT, propFormat: UnsafeMutablePointer<gint>!) -> Int/selectionPropertyGet(data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propertyType: UnsafeMutablePointer<GdkAtom?>, propertyFormat: UnsafeMutablePointer<gint>!) -> Int/
s/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>.>!, propFormat/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, property _ptr: UnsafeMutablePointer<GdkAtom?>, propertyFormat/
s/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>.>!, propertyType: UnsafeMutablePointer<GdkAtom.>!, propFormat:/selectionPropertyGet<WindowT: WindowProtocol>(requestor: WindowT, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>?>!, propertyType: UnsafeMutablePointer<GdkAtom?>!, propertyFormat:/
s/targets: GdkAtom/targets: UnsafePointer<GdkAtom?>/
s/gdk_selection_property_get(requestor.window_ptr, data, propType._ptr, propFormat)/gdk_selection_property_get(requestor.window_ptr, data, propertyType, propertyFormat)/
s/gdk_selection_property_get(window_ptr, data, propType._ptr, propFormat)/gdk_selection_property_get(window_ptr, data, propertyType, propertyFormat)/
s/gdk_selection_property_get(requestor.window_ptr, data, _ptr, propFormat)/gdk_selection_property_get(requestor.window_ptr, data, _ptr, propertyFormat)/
s/\(@available(., deprecated) @inlinable\) \(public init() {\)/\1 override \2/
s/gdk_gl_context_set_use_es(gl_context_ptr, gint(newValue))/gdk_gl_context_set_use_es(gl_context_ptr, newValue ? 1 : 0)/
s/_ptr.pointee.state = newValue.value/_ptr.pointee.state = newValue.rawValue/
