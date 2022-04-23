//
//  SwiftCairoScaledFontConvenienceAdditions.swift
//  Cairo
//
//  Created by Rene Hexel on 17/9/16.
//  Copyright © 2016, 2017, 2018, 2019, 2020, 2022 Rene Hexel.
//  All rights reserved.
//
import CCairo
import GLib
import GLibObject

extension _cairo {
    /// Type representing a Cairo font type
    public typealias FontType = cairo_font_type_t
}

public extension ScaledFontProtocol {
    /// Increases the reference count on @scaled_font by one. This prevents
    /// @scaled_font from being destroyed until a matching call to
    /// unref() is made.
    ///
    /// The number of references to a #cairo_scaled_font_t can be get using
    /// referenceCount.
    @discardableResult
    @inlinable func ref() -> ScaledFontRef {
        return ScaledFontRef(cairo_scaled_font_reference(_ptr))
    }
    
    /// Decreases the reference count on @font by one. If the result
    /// is zero, then @font and all associated resources are freed.
    /// See ref().
    @inlinable func unref() { cairo_scaled_font_destroy(_ptr) }
    
    /// Current reference count of @scaled_font.
    @inlinable var referenceCount: Int {
        return Int(cairo_scaled_font_get_reference_count(_ptr))
    }

    /// type of the backend used to create
    /// a scaled font. See #cairo_font_type_t for available types.
    /// However, this never returns %CAIRO_FONT_TYPE_TOY.
    @inlinable var type: cairo_font_type_t {
        return cairo_scaled_font_get_type(_ptr)
    }

    /// Font extents for the receiver
    @inlinable var extents: cairo_font_extents_t {
        var e = cairo_font_extents_t(ascent: 0, descent: 0, height: 0, max_x_advance: 0, max_y_advance: 0)
        cairo_scaled_font_extents(_ptr, &e)
        return e
    }

    /// Allows to check whether an error has previously occurred for this
    /// scaled_font.
    ///
    /// Return value: %CAIRO_STATUS_SUCCESS or another error such as
    ///   %CAIRO_STATUS_NO_MEMORY.
    @inlinable var status: cairo_status_t {
        return cairo_scaled_font_status(_ptr)
    }

    /// Gets the extents for a string of text. The extents describe a
    /// user-space rectangle that encloses the "inked" portion of the text
    /// drawn at the origin (0,0) (as it would be drawn by cairo.showText()
    /// if the cairo graphics state were set to the same font_face,
    /// font_matrix, ctm, and font_options as @scaled_font).  Additionally,
    /// the x_advance and y_advance values indicate the amount by which the
    /// current point would be advanced by cairo.showText().
    ///
    /// Note that whitespace characters do not directly contribute to the
    /// size of the rectangle (extents.width and extents.height). They do
    /// contribute indirectly by changing the position of non-whitespace
    /// characters. In particular, trailing whitespace characters are
    /// likely to not affect the size of the rectangle, though they will
    /// affect the x_advance and y_advance values.
    @inlinable func textExtents(_ text: UnsafePointer<CChar>) -> cairo_text_extents_t {
        var e = cairo_text_extents_t(x_bearing: 0, y_bearing: 0, width: 0, height: 0, x_advance: 0, y_advance: 0)
        cairo_scaled_font_text_extents(_ptr, text, &e)
        return e
    }
    
    /// Gets the extents for an array of glyphs. The extents describe a
    /// user-space rectangle that encloses the "inked" portion of the
    /// glyphs, (as they would be drawn by cairo.showGlyphs() if the cairo
    /// graphics state were set to the same font_face, font_matrix, ctm,
    /// and font_options as @scaled_font).  Additionally, the x_advance and
    /// y_advance values indicate the amount by which the current point
    /// would be advanced by cairo.showGlyphs().
    ///
    /// Note that whitespace glyphs do not contribute to the size of the
    /// rectangle (extents.width and extents.height).
    @inlinable func glyphExtents(_ glyphs: [cairo_glyph_t]) -> cairo_text_extents_t {
        var e = cairo_text_extents_t(x_bearing: 0, y_bearing: 0, width: 0, height: 0, x_advance: 0, y_advance: 0)
        cairo_scaled_font_glyph_extents(_ptr, glyphs, Int32(glyphs.count), &e)
        return e
    }

    /// Converts UTF-8 text to an array of glyphs, optionally with cluster
    /// mapping, that can be used to render later using @scaled_font.
    ///
    /// If @glyphs initially points to a non-%NULL value, that array is used
    /// as a glyph buffer, and @num_glyphs should point to the number of glyph
    /// entries available there.  If the provided glyph array is too short for
    /// the conversion, a new glyph array is allocated using cairo_glyph_allocate()
    /// and placed in @glyphs.  Upon return, @num_glyphs always contains the
    /// number of generated glyphs.  If the value @glyphs points to has changed
    /// after the call, the user is responsible for freeing the allocated glyph
    /// array using cairo_glyph_free().  This may happen even if the provided
    /// array was large enough.
    ///
    /// If @clusters is not %NULL, @num_clusters and @cluster_flags should not be %NULL,
    /// and cluster mapping will be computed.
    /// The semantics of how cluster array allocation works is similar to the glyph
    /// array.  That is,
    /// if @clusters initially points to a non-%NULL value, that array is used
    /// as a cluster buffer, and @num_clusters should point to the number of cluster
    /// entries available there.  If the provided cluster array is too short for
    /// the conversion, a new cluster array is allocated using cairo_text_cluster_allocate()
    /// and placed in @clusters.  Upon return, @num_clusters always contains the
    /// number of generated clusters.  If the value @clusters points at has changed
    /// after the call, the user is responsible for freeing the allocated cluster
    /// array using cairo_text_cluster_free().  This may happen even if the provided
    /// array was large enough.
    ///
    /// - Parameters:
    ///  - text: a string of text
    ///  - x: X position to place first glyph
    ///  - y: Y position to place first glyph
    ///
    /// In the simplest case, @glyphs and @clusters can point to %NULL initially
    /// and a suitable array will be allocated.  In code:
    /// <informalexample><programlisting>
    /// cairo_status_t status;
    ///
    /// cairo_glyph_t ///glyphs = NULL;
    /// int num_glyphs;
    /// cairo_text_cluster_t ///clusters = NULL;
    /// int num_clusters;
    /// cairo_text_cluster_flags_t cluster_flags;
    ///
    /// status = cairo_scaled_font_text_to_glyphs (scaled_font,
    ///                                            x, y,
    ///                                            utf8, utf8_len,
    ///                                            &amp;glyphs, &amp;num_glyphs,
    ///                                            &amp;clusters, &amp;num_clusters, &amp;cluster_flags);
    ///
    /// if (status == CAIRO_STATUS_SUCCESS) {
    ///     cairo_show_text_glyphs (cr,
    ///                             utf8, utf8_len,
    ///                             glyphs, num_glyphs,
    ///                             clusters, num_clusters, cluster_flags);
    ///
    ///     cairo_glyph_free (glyphs);
    ///     cairo_text_cluster_free (clusters);
    /// }
    /// </programlisting></informalexample>
    ///
    /// If no cluster mapping is needed:
    /// <informalexample><programlisting>
    /// cairo_status_t status;
    ///
    /// cairo_glyph_t ///glyphs = NULL;
    /// int num_glyphs;
    ///
    /// status = cairo_scaled_font_text_to_glyphs (scaled_font,
    ///                                            x, y,
    ///                                            utf8, utf8_len,
    ///                                            &amp;glyphs, &amp;num_glyphs,
    ///                                            NULL, NULL,
    ///                                            NULL);
    ///
    /// if (status == CAIRO_STATUS_SUCCESS) {
    ///     cairo_show_glyphs (cr, glyphs, num_glyphs);
    ///     cairo_glyph_free (glyphs);
    /// }
    /// </programlisting></informalexample>
    ///
    /// If stack-based glyph and cluster arrays are to be used for small
    /// arrays:
    /// <informalexample><programlisting>
    /// cairo_status_t status;
    ///
    /// cairo_glyph_t stack_glyphs[40];
    /// cairo_glyph_t ///glyphs = stack_glyphs;
    /// int num_glyphs = sizeof (stack_glyphs) / sizeof (stack_glyphs[0]);
    /// cairo_text_cluster_t stack_clusters[40];
    /// cairo_text_cluster_t ///clusters = stack_clusters;
    /// int num_clusters = sizeof (stack_clusters) / sizeof (stack_clusters[0]);
    /// cairo_text_cluster_flags_t cluster_flags;
    ///
    /// status = cairo_scaled_font_text_to_glyphs (scaled_font,
    ///                                            x, y,
    ///                                            utf8, utf8_len,
    ///                                            &amp;glyphs, &amp;num_glyphs,
    ///                                            &amp;clusters, &amp;num_clusters, &amp;cluster_flags);
    ///
    /// if (status == CAIRO_STATUS_SUCCESS) {
    ///     cairo_show_text_glyphs (cr,
    ///                             utf8, utf8_len,
    ///                             glyphs, num_glyphs,
    ///                             clusters, num_clusters, cluster_flags);
    ///
    ///     if (glyphs != stack_glyphs)
    ///         cairo_glyph_free (glyphs);
    ///     if (clusters != stack_clusters)
    ///         cairo_text_cluster_free (clusters);
    /// }
    /// </programlisting></informalexample>
    ///
    /// For details of how @clusters, @num_clusters, and @cluster_flags map input
    /// UTF-8 text to the output glyphs see cairo_show_text_glyphs().
    ///
    /// The output values can be readily passed to cairo_show_text_glyphs()
    /// cairo_show_glyphs(), or related functions, assuming that the exact
    /// same @scaled_font is used for the operation.
    ///
    /// Return value: %CAIRO_STATUS_SUCCESS upon success, or an error status
    /// if the input values are wrong or if conversion failed.  If the input
    /// values are correct but the conversion failed, the error status is also
    /// set on @scaled_font.
    @inlinable func textToGlyphs(_ text: String, x: Double = 0, y: Double = 0) -> (glyphs: [cairo_glyph_t], clusters: [cairo_text_cluster_t], flags: cairo_text_cluster_flags_t)? {
        var glyphs: UnsafeMutablePointer<cairo_glyph_t>?
        var clusters: UnsafeMutablePointer<cairo_text_cluster_t>?
        var num_glyphs: CInt = 0
        var num_clusters: CInt = 0
        var flags = cairo_text_cluster_flags_t(rawValue: 0)
        guard cairo_scaled_font_text_to_glyphs(_ptr, x, y, text, CInt(text.utf16.count), &glyphs, &num_glyphs, &clusters, &num_clusters, &flags) == CAIRO_STATUS_SUCCESS else { return nil }
        var gl = [cairo_glyph_t]()
        if let glyphs = glyphs {
            let n = Int(num_glyphs)
            gl.reserveCapacity(n)
            for i in 0..<n { gl.append(glyphs[i]) }
            cairo_glyph_free(glyphs)
        }
        var cl = [cairo_text_cluster_t]()
        if let clusters = clusters {
            let n = Int(num_clusters)
            cl.reserveCapacity(n)
            for i in 0..<n { cl.append(clusters[i]) }
            cairo_text_cluster_free(clusters)
        }
        return (gl, cl, flags)
    }

    /// the font face that this scaled font uses.  This might be the
    /// font face passed to cairo_scaled_font_create(), but this does not
    /// hold true for all possible cases.
    @inlinable var fontFace: UnsafeMutablePointer<cairo_font_face_t> {
        get { return cairo_scaled_font_get_font_face(_ptr) }
    }
}
