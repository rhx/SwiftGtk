s/GLib.Type/GType/g
s/GLib.CompareFunc/GCompareFunc/g
s/GLib.CompareDataFunc/GCompareDataFunc/g
s/\(public init([a-z_]* op:.*<GInitiallyUnowned>.*\)/override \1/
s/\(public init.([a-z_]* op:.*<GInitiallyUnowned>.*\)/override \1/
s/\(func ref()\)/@discardableResult \1/
s/\(func refSink()\)/@discardableResult \1/
s/Id/ID/g
s/class Value:/class ValueBase:/
s/: \([A-Za-z.]*Notify[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Func[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshal[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshaller[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Callback[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Accumulator[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*SignalHandler[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transform[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer =\)/: @escaping \1/g
s/: \([A-Za-z.]*Hook[,)]\)/: @escaping \1/g
s|Pointer<_Value__data__union>|Pointer<GObjectTypeValueUnion>|g
s|_Value__data__union.self|GObjectTypeValueUnion.self|g
s|setUlong(vUlong: Int)|setUlong(vUlong: gulong)|
s|setInt(vInt: Int)|setInt(vInt: gint)|
s|setUint(vUint: Int)|setUint(vUint: guint)|
s|= value_ptr.pointee.data$|= value_ptr.withMemoryRebound(to: GType.self, capacity: 2) { UnsafeRawPointer($0+1).assumingMemoryBound(to: (_Value__data__union, _Value__data__union).self).pointee }|
s|value_ptr.pointee.data = newValue|value_ptr.withMemoryRebound(to: GType.self, capacity: 2) { UnsafeMutableRawPointer($0+1).assumingMemoryBound(to: (_Value__data__union, _Value__data__union).self).pointee = newValue }|
s|\(@discardableResult @inlinable\) @discardableResult|\1|
s|names: UnsafeMutablePointer<..har>|names: UnsafeMutablePointer<UnsafePointer<CChar>?>|
s|\(G_VALUE_INTERNED_STRING\) // \([1-9][0-9]*\)|CInt(\2) // \1|
s|var paramTypes: UnsafeMutablePointer<GType>|var paramTypes: UnsafePointer<GType>|
s|names: UnsafeMutablePointer<..har>|names: UnsafeMutablePointer<UnsafePointer<CChar>?>|
