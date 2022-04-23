s/Func(`func`:/Func(_ `func`: @escaping/
s/: \(hb_.*_func_t[^?]\)/: @escaping \1/
s/\(C[GT]Font\)Ref\([^!?]\)/\1!\2/g
s/\(FT_Face\)\([^!?]\)/\1!\2/g
s/\(let result = hb_coretext_f..._get_c._font.*\)/\1?.takeRetainedValue()/
s/\(UnsafeMutablePointer<hb_language\)/\1_impl/
s/\(assumingMemoryBound(to: hb_language\)/\1_impl/
s/\([:>] hb_language_t\)\([^!?]\)/\1!\2/
s/\(let LANGUAGE_INVALID\) = HB_LANGUAGE_INVALID/\1: hb_language_t! = nil/
s/\(otTagsToScriptAndLanguage(scriptTag: hb_tag_t, languageTag: hb_tag_t, script: UnsafeMutablePointer<hb_script_t>. = nil\), language:.*/\1) -> language_tRef! { var ptr: hb_language_t? = nil ; let embed: (hb_language_t) -> language_tRef = { language_tRef(mutating: $0) }/
s/\(otTagsToScriptAndLanguage<language_tT: language_tProtocol>(scriptTag: hb_tag_t, languageTag: hb_tag_t, script: UnsafeMutablePointer<hb_script_t>. = nil, language: language_tT\).*/\1) -> language_tRef! { var ptr: hb_language_t? = nil ; let embed: (hb_language_t) -> language_tRef = { language_tRef(mutating: $0) }/
s/\(func otTagsToScriptAndLanguage(scriptTag: hb_tag_t, languageTag: hb_tag_t, script: UnsafeMutablePointer<hb_script_t>. = nil)\).*/\1 -> language_tRef! { var ptr: hb_language_t? = nil ; let embed: (hb_language_t) -> language_tRef = { language_tRef(mutating: $0) }/
s/\(hb_ot_tags_to_script_and_language(scriptTag, languageTag, script, \).*_ptr./\1\&ptr) ; return ptr.map(embed)/
s/\(shaperList: Unsafe\)Mutable\(Pointer<Unsafe\)Mutable\(Pointer<CChar>\)/\1\2\3/
s/\(shapeListShapers() -> UnsafeMutablePointer<Unsafe\)Mutable\(Pointer<CChar>\)/\1\2/
