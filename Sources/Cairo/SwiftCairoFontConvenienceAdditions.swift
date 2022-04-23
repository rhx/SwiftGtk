//
//  SwiftCairoFontConvenienceAdditions.swift
//  Cairo
//
//  Created by Rene Hexel on 17/9/16.
//  Copyright © 2017, 2018, 2019 Rene Hexel.  All rights reserved.
//
import CCairo
import GLib
import GLibObject

#if CAIRO_CONSTANTS_MISSING
public extension cairo_font_slant_t {
    public static var normal: cairo_font_slant_t = CAIRO_FONT_SLANT_NORMAL
    public static var italic: cairo_font_slant_t = CAIRO_FONT_SLANT_ITALIC
    public static var oblique: cairo_font_slant_t = CAIRO_FONT_SLANT_OBLIQUE
}

public extension cairo_font_weight_t {
    public static var normal: cairo_font_weight_t = CAIRO_FONT_WEIGHT_NORMAL
    public static var bold: cairo_font_weight_t = CAIRO_FONT_WEIGHT_BOLD
}

public extension cairo_subpixel_order_t {
    public static var defaultOrder: cairo_subpixel_order_t = CAIRO_SUBPIXEL_ORDER_DEFAULT
    public static var rgb: cairo_subpixel_order_t = CAIRO_SUBPIXEL_ORDER_RGB
    public static var bgr: cairo_subpixel_order_t = CAIRO_SUBPIXEL_ORDER_BGR
    public static var vrgb: cairo_subpixel_order_t = CAIRO_SUBPIXEL_ORDER_VRGB
    public static var vbgr: cairo_subpixel_order_t = CAIRO_SUBPIXEL_ORDER_VBGR
}

public extension cairo_hint_style_t {
    public static var defaultStyle: cairo_hint_style_t = CAIRO_HINT_STYLE_DEFAULT
    public static var none: cairo_hint_style_t = CAIRO_HINT_STYLE_NONE
    public static var slight: cairo_hint_style_t = CAIRO_HINT_STYLE_SLIGHT
    public static var medium: cairo_hint_style_t = CAIRO_HINT_STYLE_MEDIUM
    public static var full: cairo_hint_style_t = CAIRO_HINT_STYLE_FULL
}

public extension cairo_hint_metrics_t {
    public static var defaultMetrics: cairo_hint_metrics_t = CAIRO_HINT_METRICS_DEFAULT
    public static var off: cairo_hint_metrics_t = CAIRO_HINT_METRICS_OFF
    public static var on: cairo_hint_metrics_t = CAIRO_HINT_METRICS_ON
}
#endif

public extension ContextProtocol {
    /// Note: The selectFontFace() function call is part of what
    /// the cairo designers call the "toy" text API. It is convenient for
    /// short demos and simple programs, but it is not expected to be
    /// adequate for serious text-using applications.
    ///
    /// Selects a family and style of font from a simplified description as
    /// a family name, slant and weight. Cairo provides no operation to
    /// list available family names on the system (this is a "toy",
    /// remember), but the standard CSS2 generic family names, ("serif",
    /// "sans-serif", "cursive", "fantasy", "monospace"), are likely to
    /// work as expected.
    ///
    /// If @family starts with the string "@cairo:", or if no native font
    /// backends are compiled in, cairo will use an internal font family.
    /// The internal font family recognizes many modifiers in the @family
    /// string, most notably, it recognizes the string "monospace".  That is,
    /// the family name "@cairo:monospace" will use the monospace version of
    /// the internal font family.
    ///
    /// For "real" font selection, see the font-backend-specific
    /// font_face_create functions for the font backend you are using. (For
    /// example, if you are using the freetype-based cairo-ft font backend,
    /// see cairo_ft_font_face_create_for_ft_face() or
    /// cairo_ft_font_face_create_for_pattern().) The resulting font face
    /// could then be used with cairo_scaled_font_create() and
    /// cairo_set_scaled_font().
    ///
    /// Similarly, when using the "real" font support, you can call
    /// directly into the underlying font system, (such as fontconfig or
    /// freetype), for operations such as listing available fonts, etc.
    ///
    /// It is expected that most applications will need to use a more
    /// comprehensive font handling and text layout library, (for example,
    /// pango), in conjunction with cairo.
    ///
    /// If text is drawn without a call to cairo_select_font_face(), (nor
    /// selectFontFace() nor setScaledFont()), the default
    /// family is platform-specific, but is essentially "sans-serif".
    /// Default slant is %CAIRO_FONT_SLANT_NORMAL, and default weight is
    /// %CAIRO_FONT_WEIGHT_NORMAL.
    ///
    /// This function is equivalent to a call to cairo_toy_font_face_create()
    /// followed by cairo_set_font_face().
    @inlinable func selectFontFace(_ family: UnsafePointer<CChar>, slant: cairo_font_slant_t = .normal, weight: cairo_font_weight_t = .normal) {
        cairo_select_font_face(_ptr, family, slant, weight)
    }

    /// Sets the current font matrix to a scale by a factor of @size, replacing
    /// any font matrix previously set with cairo_set_font_size() or
    /// cairo_set_font_matrix(). This results in a font size of @size user space
    /// units. (More precisely, this matrix will result in the font's
    /// em-square being a @size by @size square in user space.)
    ///
    /// If text is drawn without setting the font size, (nor
    /// the font matrix nor setScaledFont()), the default
    /// font size is 10.0.
    @inlinable var fontSize: Double {
        get {
            let m = fontMatrix
            let size = (m.xx + m.yx + m.xy + m.yy) / 2
            return size
        }
        nonmutating set { cairo_set_font_size(_ptr, newValue) }
    }

    /// The font matrix gives a
    /// transformation from the design space of the font (in this space,
    /// the em-square is 1 unit by 1 unit) to user space. Normally, a
    /// simple scale is used (see cairo_set_font_size()), but a more
    /// complex font matrix can be used to shear the font
    /// or stretch it unequally along the two axes.
    @inlinable var fontMatrix: cairo_matrix_t {
        get {
            var m = cairo_matrix_t(xx: 0, yx: 0, xy: 0, yy: 0, x0: 0, y0: 0)
            cairo_get_font_matrix(_ptr, &m)
            return m
        }
        nonmutating set {
            var matrix = newValue
            cairo_set_font_matrix(_ptr, &matrix)
        }
    }

    /// Sets a set of custom font rendering options for the #cairo_t.
    /// Rendering options are derived by merging these options with the
    /// options derived from underlying surface; if the value in @options
    /// has a default value (like %CAIRO_ANTIALIAS_DEFAULT), then the value
    /// from the surface is used.
    @inlinable func setFont(options: UnsafePointer<cairo_font_options_t>) {
        cairo_set_font_options(_ptr, options)
    }

    /// Retrieves font rendering options set via #cairo_set_font_options.
    /// Note that the returned options do not include any options derived
    /// from the underlying surface; they are literally the options
    /// passed to cairo_set_font_options().
    /// - Parameters:
    ///   - options: a #cairo_font_options_t pointer into which to store the retrieved options. All existing values are overwritten
    @inlinable func getFont(options: UnsafeMutablePointer<cairo_font_options_t>) {
        cairo_get_font_options(_ptr, options)
    }

    /// Current font face for a #cairo_t.
    ///
    /// This object is owned by cairo.
    /// To keep a reference to it, you must call fontFace.ref().
    ///
    /// This function never returns %NULL. If memory cannot be allocated, a
    /// special "nil" #cairo_font_face_t object will be returned on which
    /// cairo_font_face_status() returns %CAIRO_STATUS_NO_MEMORY. Using
    /// this nil object will cause its error state to propagate to other
    /// objects it is passed to, (for example, calling
    /// cairo_set_font_face() with a nil font will trigger an error that
    /// will shutdown the #cairo_t object).
    @inlinable var fontFace: UnsafeMutablePointer<cairo_font_face_t> {
        get { return cairo_get_font_face(_ptr) }
        nonmutating set { cairo_set_font_face(_ptr, newValue) }
    }

    /// the current scaled font for a #cairo_t.
    ///
    /// Return value: the current scaled font. This object is owned by
    /// cairo.
    ///
    /// This function never returns %NULL. If memory cannot be allocated, a
    /// special "nil" #cairo_scaled_font_t object will be returned on which
    /// cairo_scaled_font_status() returns %CAIRO_STATUS_NO_MEMORY. Using
    /// this nil object will cause its error state to propagate to other
    /// objects it is passed to, (for example, setting
    /// scaledFont with a nil font will trigger an error that
    /// will shutdown the #cairo_t object).
    @inlinable var scaledFont: ScaledFont {
        get { return ScaledFont(cairo_get_scaled_font(_ptr)) }
        nonmutating set { cairo_set_scaled_font(_ptr, newValue._ptr) }
    }

    /// A drawing operator that generates the shape from a string of UTF-8
    /// characters, rendered according to the current font_face, font_size
    /// (font_matrix), and font_options.
    ///
    /// This function first computes a set of glyphs for the string of
    /// text. The first glyph is placed so that its origin is at the
    /// current point. The origin of each subsequent glyph is offset from
    /// that of the previous glyph by the advance values of the previous
    /// glyph.
    ///
    /// After this call the current point is moved to the origin of where
    /// the next glyph would be placed in this same progression. That is,
    /// the current point will be at the origin of the final glyph offset
    /// by its advance values. This allows for easy display of a single
    /// logical string with multiple calls to cairo_show_text().
    ///
    /// Note: The cairo_show_text() function call is part of what the cairo
    /// designers call the "toy" text API. It is convenient for short demos
    /// and simple programs, but it is not expected to be adequate for
    /// serious text-using applications. See cairo_show_glyphs() for the
    /// "real" text display API in cairo.
    @inlinable func showText(_ text: UnsafePointer<CChar>) {
        cairo_show_text(_ptr, text)
    }

    /// This operation has rendering effects similar to showGlyphs()
    /// but, if the target surface supports it, uses the provided text and
    /// cluster mapping to embed the text for the glyphs shown in the output.
    /// If the target does not support the extended attributes, this function
    /// acts like the basic cairo_show_glyphs() as if it had been passed
    /// @glyphs and @num_glyphs.
    ///
    /// The mapping between @utf8 and @glyphs is provided by an array of
    /// <firstterm>clusters</firstterm>.  Each cluster covers a number of
    /// text bytes and glyphs, and neighboring clusters cover neighboring
    /// areas of @utf8 and @glyphs.  The clusters should collectively cover @utf8
    /// and @glyphs in entirety.
    ///
    /// The first cluster always covers bytes from the beginning of @utf8.
    /// If @cluster_flags do not have the %CAIRO_TEXT_CLUSTER_FLAG_BACKWARD
    /// set, the first cluster also covers the beginning
    /// of @glyphs, otherwise it covers the end of the @glyphs array and
    /// following clusters move backward.
    ///
    /// See #cairo_text_cluster_t for constraints on valid clusters.
    @inlinable func showText(_ text: UnsafePointer<CChar>, length: Int, glyphs: [cairo_glyph_t], clusters: [cairo_text_cluster_t], flags: cairo_text_cluster_flags_t) {
        cairo_show_text_glyphs(_ptr, text, Int32(length), glyphs, Int32(glyphs.count), clusters, Int32(clusters.count), flags)
    }

    /// Gets the extents for a string of text. The extents describe a
    /// user-space rectangle that encloses the "inked" portion of the text,
    /// (as it would be drawn by showText()). Additionally, the
    /// x_advance and y_advance values indicate the amount by which the
    /// current point would be advanced by showText().
    ///
    /// Note that whitespace characters do not directly contribute to the
    /// size of the rectangle (extents.width and extents.height). They do
    /// contribute indirectly by changing the position of non-whitespace
    /// characters. In particular, trailing whitespace characters are
    /// likely to not affect the size of the rectangle, though they will
    /// affect the x_advance and y_advance values.
    @inlinable func textExtents(_ text: UnsafePointer<CChar>) -> cairo_text_extents_t {
        var e = cairo_text_extents_t(x_bearing: 0, y_bearing: 0, width: 0, height: 0, x_advance: 0, y_advance: 0)
        cairo_text_extents(_ptr, text, &e)
        return e
    }

    /// Gets the extents for an array of glyphs. The extents describe a
    /// user-space rectangle that encloses the "inked" portion of the
    /// glyphs, (as they would be drawn by showGlyphs()).
    /// Additionally, the x_advance and y_advance values indicate the
    /// amount by which the current point would be advanced by
    /// showGlyphs().
    ///
    /// Note that whitespace glyphs do not contribute to the size of the
    /// rectangle (extents.width and extents.height).
    @inlinable func glyphExtents(_ glyphs: [cairo_glyph_t]) -> cairo_text_extents_t {
        var e = cairo_text_extents_t(x_bearing: 0, y_bearing: 0, width: 0, height: 0, x_advance: 0, y_advance: 0)
        cairo_glyph_extents(_ptr, glyphs, Int32(glyphs.count), &e)
        return e
    }

    /// Font extents for the currently selected font
    @inlinable var fontExtents: cairo_font_extents_t {
        var e = cairo_font_extents_t(ascent: 0, descent: 0, height: 0, max_x_advance: 0, max_y_advance: 0)
        cairo_font_extents(_ptr, &e)
        return e
    }
}
