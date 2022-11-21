s/public *func getMirrorChar/@available(*, deprecated) public func getMirrorChar/
s/\(public func bidiTypeForUnichar\)/@available(*, deprecated) \1/
s/\(public func findBaseDir\)/@available(*, deprecated) \1/
s/\(public func unicharDirection\)/@available(*, deprecated) \1/
s/: \([A-Za-z.]*Notify[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Func[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshal[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshaller[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Callback[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Accumulator[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*SignalHandler[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transform[,)]\)/: @escaping \1/g
s/@escaping PangoTextTransform/PangoTextTransform/g
s/: \([A-Za-z.]*Transformer =\)/: @escaping \1/g
s/: \([A-Za-z.]*Hook[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Function[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Mapping[,)]\)/: @escaping \1/g
s/ -> UnsafeMutablePointer<PangoLogAttr>/ -> UnsafePointer<PangoLogAttr>/
s/ -> UnsafeMutablePointer<PangoScript>/ -> UnsafePointer<PangoScript>/
s/(CChar, CChar, CChar, CChar, CChar, CChar, CChar)/(Int8, Int8, Int8, Int8, Int8, Int8)/
s/\(@inlinable var shapeEngine:\) gpointer. {/\1 UnsafeMutablePointer<PangoEngineShape>! {/
s/\(@inlinable var langEngine:\) gpointer. {/\1 UnsafeMutablePointer<PangoEngineLang>! {/
s/rv.map { PangoLanguageUnsafeMutablePointer<PangoLanguage>.*/rv/
