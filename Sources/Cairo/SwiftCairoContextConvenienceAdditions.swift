//
//  SwiftCairoContextConvenienceAdditions.swift
//  SwiftCairo
//
//  Created by Rene Hexel on 16/9/16.
//  Copyright © 2017, 2018, 2019, 2020, 2021 Rene Hexel.  All rights reserved.
//
import CCairo
import GLib
import GLibObject

public extension ContextRef {
    /// Create a Cairo context from a surface
    @inlinable init<S: SurfaceProtocol>(surface: S) {
        ptr = UnsafeMutableRawPointer(cairo_create(surface._ptr))
    }
}

public extension Context {
    /// Create a Cairo context from a surface
    @inlinable convenience init<S: SurfaceProtocol>(surface: S) {
        self.init(cairo_create(surface._ptr))
    }
}

public extension ContextProtocol {
    /// Typed pointer to the underlying context
    @inlinable var context_ptr: UnsafeMutablePointer<cairo_t>! { _ptr }

        /// Increases the reference count on cr by one.
    /// This prevents cr from being destroyed until
    /// a matching call to unref() is made.
    @discardableResult
    @inlinable func ref() -> ContextRef {
        return ContextRef(cairo_reference(_ptr))
    }

    /// Decreases the reference count on cr by one.
    /// If the result is zero, then cr and
    /// all associated resources are freed.
    /// See ref().
    @inlinable func unref() { cairo_destroy(_ptr) }
    
    /// Cairo context reference count
    @inlinable var referenceCount: Int {
        return Int(cairo_get_reference_count(_ptr))
    }

    /// Error status of the context
    @inlinable var status: cairo_status_t { return cairo_status(_ptr) }

    /// Makes a copy of the current state of cr
    /// and saves it on an internal stack of saved states
    /// for cr.
    /// When restore() is called, cr will be restored
    /// to the saved state.
    /// Multiple calls to save() and restore() can be nested;
    /// each call to restore() restores the state from the
    /// matching paired save().
    ///
    /// It isn't necessary to clear all saved states
    /// before a cairo_t is freed. If the reference count
    /// of a cairo_t drops to zero in response to a call
    /// to unref(), any saved states will be freed along
    /// with the cairo_t.
    @inlinable func save() { cairo_save(_ptr) }

    /// Restores cr to the state saved by a preceding call to save() and removes that state from the stack of saved states.
    @inlinable func restore() { cairo_restore(_ptr) }

    /// Gets the target surface for the cairo context as passed to cairo_create().
    ///
    /// This function will always return a valid pointer, but the result can be a "nil" surface if cr is already in an error state, (ie. status != CAIRO_STATUS_SUCCESS). A nil surface is indicated by surface.status != CAIRO_STATUS_SUCCESS.
    @inlinable var target: SurfaceRef {
        return SurfaceRef(cairo_get_target(_ptr))
    }

    ///    Temporarily redirects drawing to an intermediate surface known as a group. The redirection lasts until the group is completed by a call to cairo_pop_group() or cairo_pop_group_to_source(). These calls provide the result of any drawing to the group as a pattern, (either as an explicit object, or set as the source pattern).
    ///
    ///    This group functionality can be convenient for performing intermediate compositing. One common use of a group is to render objects as opaque within the group, (so that they occlude each other), and then blend the result with translucence onto the destination.
    ///
    ///    Groups can be nested arbitrarily deep by making balanced calls to cairo_push_group()/cairo_pop_group(). Each call pushes/pops the new target group onto/from a stack.
    ///
    ///    The cairo_push_group() function calls cairo_save() so that any changes to the graphics state will not be visible outside the group, (the pop_group functions call cairo_restore()).
    ///
    ///    By default the intermediate group will have a content type of CAIRO_CONTENT_COLOR_ALPHA. Other content types can be chosen for the group by using cairo_push_group_with_content() instead.
    ///
    ///    As an example, here is how one might fill and stroke a path with translucence, but without any portion of the fill being visible under the stroke:
    ///    cairo_push_group (cr);
    ///    cairo_set_source (cr, fill_pattern);
    ///    cairo_fill_preserve (cr);
    ///    cairo_set_source (cr, stroke_pattern);
    ///    cairo_stroke (cr);
    ///    cairo_pop_group_to_source (cr);
    ///    cairo_paint_with_alpha (cr, alpha);
    @inlinable func pushGroup() { cairo_push_group(_ptr) }

    /// Temporarily redirects drawing to an intermediate surface known as a group. The redirection lasts until the group is completed by a call to cairo_pop_group() or cairo_pop_group_to_source(). These calls provide the result of any drawing to the group as a pattern, (either as an explicit object, or set as the source pattern).
    ///
    /// The group will have a content type of content . The ability to control this content type is the only distinction between this function and cairo_push_group() which you should see for a more detailed description of group rendering.
    @inlinable func pushGroup(content: Content) {
        cairo_push_group_with_content(_ptr, content)
    }

    /// Terminates the redirection begun by a call to cairo_push_group() or cairo_push_group_with_content() and returns a new pattern containing the results of all drawing operations performed to the group.
    ///
    /// The cairo_pop_group() function calls cairo_restore(), (balancing a call to cairo_save() by the push_group function), so that any changes to the graphics state will not be visible outside the group.
    @discardableResult
    @inlinable func popGroup() -> PatternRef {
        return PatternRef(cairo_pop_group(_ptr))
    }

    /// Terminates the redirection begun by a call to cairo_push_group() or cairo_push_group_with_content() and installs the resulting pattern as the source pattern in the given cairo context.
    ///
    /// The behavior of this method is equivalent to the sequence of operations:
    ///     cairo_pattern_t *group = cairo_pop_group (cr);
    ///     cairo_set_source (cr, group);
    ///     cairo_pattern_destroy (group);
    /// but is more convenient as their is no need for a variable to store the short-lived pointer to the pattern.
    ///
    /// The cairo_pop_group() function calls cairo_restore(), (balancing a call to cairo_save() by the push_group function), so that any changes to the graphics state will not be visible outside the group.
    @inlinable func popGroupToSource() {
        cairo_pop_group_to_source(_ptr)
    }

    /// Returns the current destination surface for the context. This is either the original target surface as passed to cairo_create() or the target surface for the current group as started by the most recent call to cairo_push_group() or cairo_push_group_with_content().
    /// This property will always return a valid pointer, but the result can be a "nil" surface if cr is already in an error state, (ie. cairo_status() != CAIRO_STATUS_SUCCESS). A nil surface is indicated by cairo_surface_status() != CAIRO_STATUS_SUCCESS.
    @inlinable var groupTarget: SurfaceRef {
        return SurfaceRef(cairo_get_group_target(_ptr))
    }

    /// Sets the source pattern within cr to an opaque color. This opaque color will then be used for any subsequent drawing operation until a new source pattern is set.
    ///
    /// The color components are floating point numbers in the range 0 to 1.
    /// If the values passed in are outside that range, they will be clamped.
    ///
    /// The default source pattern is opaque black, (that is, it is equivalent to setSource(red: 0.0, green: 0.0, blue: 0.0)).
    @inlinable func setSource(red: Double, green: Double, blue: Double) {
        cairo_set_source_rgb(_ptr, red, green, blue)
    }

    /// Sets the source pattern within cr to a translucent color. This color will then be used for any subsequent drawing operation until a new source pattern is set.
    ///
    /// The color and alpha components are floating point numbers in the range 0 to 1. If the values passed in are outside that range, they will be clamped.
    ///
    /// The default source pattern is opaque black, (that is, it is equivalent to setSource(red: 0.0, green: 0.0, blue: 0.0)).
    @inlinable func setSource(red: Double, green: Double, blue: Double, alpha: Double) {
        cairo_set_source_rgba(_ptr, red, green, blue, alpha)
    }

    /// Source pattern within cr. This pattern will then be used for any subsequent drawing operation until a new source pattern is set.
    ///
    /// Note: The pattern's transformation matrix will be locked to the user space in effect at the time of cairo_set_source(). This means that further modifications of the current transformation matrix will not affect the source pattern. See cairo_pattern_set_matrix().
    ///
    /// The default source pattern is a solid pattern that is opaque black, (that is, it is equivalent to cairo_set_source_rgb(cr, 0.0, 0.0, 0.0)).
    @inlinable var source: PatternRef {
        get { return PatternRef(cairo_get_source(_ptr)) }
        nonmutating set { cairo_set_source(_ptr, newValue._ptr) }
    }

    /// Antialiasing mode of the rasterizer used for drawing shapes. This value is a hint, and a particular backend may or may not support a particular value. At the current time, no backend supports CAIRO_ANTIALIAS_SUBPIXEL when drawing shapes.
    ///
    /// Note that this option does not affect text rendering, instead see cairo_font_options_set_antialias().
    @inlinable var antiAlias: cairo_antialias_t {
        get { return cairo_get_antialias(_ptr) }
        nonmutating set { cairo_set_antialias(_ptr, newValue) }
    }

    /// Sets the dash pattern to be used by cairo_stroke(). A dash pattern is specified by dashes , an array of positive values. Each value provides the length of alternate "on" and "off" portions of the stroke. The offset specifies an offset into the pattern at which the stroke begins.
    ///
    /// Each "on" segment will have caps applied as if the segment were a separate sub-path. In particular, it is valid to use an "on" length of 0.0 with CAIRO_LINE_CAP_ROUND or CAIRO_LINE_CAP_SQUARE in order to distributed dots or squares along a path.
    ///
    /// Note: The length values are in user-space units as evaluated at the time of stroking. This is not necessarily the same as the user space at the time of cairo_set_dash().
    ///
    /// If num_dashes is 0 dashing is disabled.
    ///
    /// If num_dashes is 1 a symmetric pattern is assumed with alternating on and off portions of the size specified by the single value in dashes .
    ///
    /// If any value in dashes is negative, or if all values are 0, then cr will be put into an error state with a status of CAIRO_STATUS_INVALID_DASH.
    ///
    ///  - Parameter dashes:    an array specifying alternate lengths of on and off stroke portions
    ///  - Parameter offset: an offset into the dash pattern at which the stroke should start
    @inlinable func setDash(_ dashes: [Double], offset: Double = 0.0) {
        cairo_set_dash(_ptr, dashes, Int32(dashes.count), offset)
    }

    /// length of the dash array in cr (0 if dashing is not currently in effect).
    @inlinable var dashCount: Int {
        return Int(cairo_get_dash_count(_ptr))
    }

    /// Sets the dash pattern to be used by cairo_stroke(). A dash pattern is specified by dashes , an array of positive values. Each value provides the length of alternate "on" and "off" portions of the stroke. The offset specifies an offset into the pattern at which the stroke begins.
    ///
    /// Each "on" segment will have caps applied as if the segment were a separate sub-path. In particular, it is valid to use an "on" length of 0.0 with CAIRO_LINE_CAP_ROUND or CAIRO_LINE_CAP_SQUARE in order to distributed dots or squares along a path.
    ///
    /// Note: The length values are in user-space units as evaluated at the time of stroking. This is not necessarily the same as the user space at the time of cairo_set_dash().
    ///
    /// If num_dashes is 0 dashing is disabled.
    ///
    /// If num_dashes is 1 a symmetric pattern is assumed with alternating on and off portions of the size specified by the single value in dashes .
    ///
    /// If any value in dashes is negative, or if all values are 0, then cr will be put into an error state with a status of CAIRO_STATUS_INVALID_DASH.
    @inlinable var dash: [Double] {
        get {
            var dashes = [Double](repeating: 0, count: dashCount)
            cairo_get_dash(_ptr, &dashes, nil)
            return dashes
        }
        nonmutating set { setDash(newValue) }
    }

    /// Current fill rule within the cairo context. The fill rule is used to determine which regions are inside or outside a complex (potentially self-intersecting) path. The current fill rule affects both cairo_fill() and cairo_clip(). See cairo_fill_rule_t for details on the semantics of each available fill rule.
    ///
    /// The default fill rule is CAIRO_FILL_RULE_WINDING.
    @inlinable var fillRule: cairo_fill_rule_t {
        get { return cairo_get_fill_rule(_ptr) }
        nonmutating set { cairo_set_fill_rule(_ptr, newValue) }
    }

    /// Current line cap style within the cairo context. See cairo_line_cap_t for details about how the available line cap styles are drawn.
    ///
    /// As with the other stroke parameters, the current line cap style is examined by cairo_stroke(), cairo_stroke_extents(), and cairo_stroke_to_path(), but does not have any effect during path construction.
    @inlinable var lineCap: cairo_line_cap_t {
        get { return cairo_get_line_cap(_ptr) }
        nonmutating set { cairo_set_line_cap(_ptr, newValue) }
    }

    /// Current line join style within the cairo context. See cairo_line_join_t for details about how the available line join styles are drawn.
    ///
    /// As with the other stroke parameters, the current line join style is examined by cairo_stroke(), cairo_stroke_extents(), and cairo_stroke_to_path(), but does not have any effect during path construction.
    ///
    /// The default line join style is CAIRO_LINE_JOIN_MITER.
    @inlinable var lineJoin: cairo_line_join_t {
        get { return cairo_get_line_join(_ptr) }
        nonmutating set { cairo_set_line_join(_ptr, newValue) }
    }

    /// Current line width within the cairo context. The line width value specifies the diameter of a pen that is circular in user space, (though device-space pen may be an ellipse in general due to scaling/shear/rotation of the CTM).
    ///
    /// Note: When the description above refers to user space and CTM it refers to the user space and CTM in effect at the time of the stroking operation, not the user space and CTM in effect at the time of the call to cairo_set_line_width(). The simplest usage makes both of these spaces identical. That is, if there is no change to the CTM between a call to cairo_set_line_width() and the stroking operation, then one can just pass user-space values to cairo_set_line_width() and ignore this note.
    ///
    /// As with the other stroke parameters, the current line width is examined by cairo_stroke(), cairo_stroke_extents(), and cairo_stroke_to_path(), but does not have any effect during path construction.
    ///
    /// The default line width value is 2.0.
    @inlinable var lineWidth: Double {
        get { return cairo_get_line_width(_ptr) }
        nonmutating set { cairo_set_line_width(_ptr, newValue) }
    }

    /// Current miter limit within the cairo context.
    ///
    /// If the current line join style is set to CAIRO_LINE_JOIN_MITER (see cairo_set_line_join()), the miter limit is used to determine whether the lines should be joined with a bevel instead of a miter. Cairo divides the length of the miter by the line width. If the result is greater than the miter limit, the style is converted to a bevel.
    ///
    /// As with the other stroke parameters, the current line miter limit is examined by cairo_stroke(), cairo_stroke_extents(), and cairo_stroke_to_path(), but does not have any effect during path construction.
    ///
    /// The default miter limit value is 10.0, which will convert joins with interior angles less than 11 degrees to bevels instead of miters. For reference, a miter limit of 2.0 makes the miter cutoff at 60 degrees, and a miter limit of 1.414 makes the cutoff at 90 degrees.
    ///
    /// A miter limit for a desired angle can be computed as: miter limit = 1/sin(angle/2)
    @inlinable var miterLimit: Double {
        get { return cairo_get_miter_limit(_ptr) }
        nonmutating set { cairo_set_miter_limit(_ptr, newValue) }
    }
    
    /// Current mitre limit within the cairo context.
    ///
    /// If the current line join style is set to CAIRO_LINE_JOIN_MITER (see cairo_set_line_join()), the mitre limit is used to determine whether the lines should be joined with a bevel instead of a miter. Cairo divides the length of the mitre by the line width. If the result is greater than the mitre limit, the style is converted to a bevel.
    ///
    /// As with the other stroke parameters, the current line mitre limit is examined by cairo_stroke(), cairo_stroke_extents(), and cairo_stroke_to_path(), but does not have any effect during path construction.
    ///
    /// The default mitre limit value is 10.0, which will convert joins with interior angles less than 11 degrees to bevels instead of mitres. For reference, a miter limit of 2.0 makes the mitre cutoff at 60 degrees, and a miter limit of 1.414 makes the cutoff at 90 degrees.
    ///
    /// A mitre limit for a desired angle can be computed as: mitre limit = 1/sin(angle/2)
    @inlinable var mitreLimit: Double {
        get { return cairo_get_miter_limit(_ptr) }
        nonmutating set { cairo_set_miter_limit(_ptr, newValue) }
    }

    /// Compositing operator to be used for all drawing operations. See cairo_operator_t for details on the semantics of each available compositing operator.
    ///
    /// The default operator is CAIRO_OPERATOR_OVER.
    @inlinable var `operator`: cairo_operator_t {
        get { return cairo_get_operator(_ptr) }
        nonmutating set { cairo_set_operator(_ptr, newValue) }
    }
    
    /// Compositing operator to be used for all drawing operations. See cairo_operator_t for details on the semantics of each available compositing operator.
    ///
    /// The default operator is CAIRO_OPERATOR_OVER.
    @inlinable var compositingOperator: cairo_operator_t {
        get { return cairo_get_operator(_ptr) }
        nonmutating set { cairo_set_operator(_ptr, newValue) }
    }

    /// Tolerance used when converting paths into trapezoids. Curved segments of the path will be subdivided until the maximum deviation between the original path and the polygonal approximation is less than tolerance. The default value is 0.1. A larger value will give better performance, a smaller value, better appearance. (Reducing the value from the default value of 0.1 is unlikely to improve appearance significantly.) The accuracy of paths within Cairo is limited by the precision of its internal arithmetic, and the prescribed tolerance is restricted to the smallest representable internal value.
    @inlinable var tolerance: Double {
        get { return cairo_get_tolerance(_ptr) }
        nonmutating set { cairo_set_tolerance(_ptr, newValue) }
    }

    /// Establishes a new clip region by intersecting the current clip region with the current path as it would be filled by cairo_fill() and according to the current fill rule (see cairo_set_fill_rule()).
    ///
    /// After clip(), the current path will be cleared from the cairo context.
    ///
    /// The current clip region affects all drawing operations by effectively masking out any changes to the surface that are outside the current clip region.
    ///
    /// Calling clip() can only make the clip region smaller, never larger. But the current clip is part of the graphics state, so a temporary restriction of the clip region can be achieved by calling clip() within a save()/restore() pair. The only other means of increasing the size of the clip region is resetClip().
    @inlinable func clip() { cairo_clip(_ptr) }

    /// Establishes a new clip region by intersecting the current clip region with the current path as it would be filled by fill() and according to the current fill rule (see fillRule).
    ///
    /// Unlike clip(), clipPreserve() preserves the path within the cairo context.
    ///
    /// The current clip region affects all drawing operations by effectively masking out any changes to the surface that are outside the current clip region.
    ///
    /// Calling clipPreserve() can only make the clip region smaller, never larger. But the current clip is part of the graphics state, so a temporary restriction of the clip region can be achieved by calling clipPreserve() within a save()/restore() pair. The only other means of increasing the size of the clip region is resetClip().
    @inlinable func clipPreserve() { cairo_clip_preserve(_ptr) }

    /// Bounding box in user coordinates covering the area inside the current clip.
    @inlinable var clipExtents: (x1: Double, y1: Double, x2: Double, y2: Double) {
        var x1: Double = 0.0
        var y1: Double = 0.0
        var x2: Double = 0.0
        var y2: Double = 0.0
        cairo_clip_extents(_ptr, &x1, &y1, &x2, &y2)
        return (x1, y1, x2, y2)
    }

    /// Tests whether the given point is inside the area that would be visible through the current clip, i.e. the area that would be filled by a paint() operation.
    ///
    /// See clip() and clipPreserve().
    @inlinable func isInClip(_ x: Double, _ y: Double) -> Bool {
        return cairo_in_clip(_ptr, x, y) != 0
    }

    /// Reset the current clip region to its original, unrestricted state. That is, set the clip region to an infinitely large shape containing the target surface. Equivalently, if infinity is too hard to grasp, one can imagine the clip region being reset to the exact bounds of the target surface.
    ///
    /// Note that code meant to be reusable should not call resetClip() as it will cause results unexpected by higher-level code which calls clip(). Consider using save() and restore() around clip() as a more robust means of temporarily restricting the clip region.
    @inlinable func resetClip() { cairo_reset_clip(_ptr) }

    /// Current clip region as a list of rectangles in user coordinates.
    @inlinable var clipRectangleList: [cairo_rectangle_t]? {
        guard let list = cairo_copy_clip_rectangle_list(_ptr) else { return nil }
        let n = Int(list.pointee.num_rectangles)
        let r = cairo_rectangle_t(x: 0, y: 0, width: 0, height: 0)
        var rects = [cairo_rectangle_t](repeating: r, count: n)
        rects.withUnsafeMutableBufferPointer { (r: inout UnsafeMutableBufferPointer<cairo_rectangle_t>) in
            for i in 0..<n { r[i] = list.pointee.rectangles[i] }
        }
        cairo_rectangle_list_destroy(list)
        return rects
    }

    /// A drawing operator that fills the current path according to the current fill rule, (each sub-path is implicitly closed before being filled). After fill(), the current path will be cleared from the cairo context. See fillRule() and fillPreserve().
    @inlinable func fill() { cairo_fill(_ptr) }

    /// A drawing operator that fills the current path according to the current fill rule, (each sub-path is implicitly closed before being filled). Unlike fill(), fillPreserve() preserves the path within the cairo context.
    @inlinable func fillPreserve() { cairo_fill_preserve(_ptr) }

    /// Bounding box in user coordinates covering the area that would be affected, (the "inked" area), by a cairo_fill() operation given the current path and fill parameters. If the current path is empty, returns an empty rectangle ((0,0), (0,0)). Surface dimensions and clipping are not taken into account.
    ///
    /// Contrast with pathExtents(), which is similar, but returns non-zero extents for some paths with no inked area, (such as a simple line segment).
    ///
    /// Note that fillExtents must necessarily do more work to compute the precise inked areas in light of the fill rule, so pathExtents may be more desirable for sake of performance if the non-inked path extents are desired.
    ///
    /// See fill(), fillRule, and fillPreserve().
    @inlinable var fillExtents: (x1: Double, y1: Double, x2: Double, y2: Double) {
        var x1: Double = 0.0
        var y1: Double = 0.0
        var x2: Double = 0.0
        var y2: Double = 0.0
        cairo_fill_extents(_ptr, &x1, &y1, &x2, &y2)
        return (x1, y1, x2, y2)
    }

    /// Tests whether the given point is inside the area that would be affected by a fill() operation given the current path and filling parameters. Surface dimensions and clipping are not taken into account.
    ///
    /// See fill(), fillRule, and fillPreserve().
    @inlinable func isInFill(_ x: Double, _ y: Double) -> Bool {
        return cairo_in_fill(_ptr, x, y) != 0
    }

    /// Drawing operator that paints the current source using the alpha channel of pattern as a mask. (Opaque areas of pattern are painted with the source, transparent areas are not painted.)
    @inlinable func mask<P: PatternProtocol>(pattern: P) { cairo_mask(_ptr, pattern._ptr) }

    /// drawing operator that paints the current source using the alpha channel of surface as a mask. (Opaque areas of surface are painted with the source, transparent areas are not painted.)
    ///
    /// - Parameters:
    ///   - surface: a Cairo Surface
    ///   - x: X coordinate at which to place the origin of surface
    ///   - y: Y coordinate at which to place the origin of surface
    @inlinable func mask<S: SurfaceProtocol>(surface: S, x: Double = 0.0, y: Double = 0.0) {
        cairo_mask_surface(_ptr, surface._ptr, x, y)
    }

    /// Drawing operator that paints the current source everywhere within the current clip region.
    @inlinable func paint() { cairo_paint(_ptr) }

    /// Drawing operator that paints the current source everywhere within the current clip region using a mask of constant alpha value alpha . The effect is similar to paint(), but the drawing is faded out using the alpha value.
    @inlinable func paint(alpha: Double) { cairo_paint_with_alpha(_ptr, alpha) }

    /// Drawing operator that strokes the current path according to the current line width, line join, line cap, and dash settings. After stroke(), the current path will be cleared from the cairo context. See lineWidth, lineJoin, lineCap, dash, setDash(), and strokePreserve().
    ///
    /// Note: Degenerate segments and sub-paths are treated specially and provide a useful result. These can result in two different situations:
    ///
    /// Zero-length "on" segments set in dash/setDash(). If the cap style is CAIRO_LINE_CAP_ROUND or CAIRO_LINE_CAP_SQUARE then these segments will be drawn as circular dots or squares respectively. In the case of CAIRO_LINE_CAP_SQUARE, the orientation of the squares is determined by the direction of the underlying path.
    ///
    /// A sub-path created by moveTo() followed by either a closePath() or one or more calls to lineTo() to the same coordinate as the moveTo(). If the cap style is CAIRO_LINE_CAP_ROUND then these sub-paths will be drawn as circular dots. Note that in the case of CAIRO_LINE_CAP_SQUARE a degenerate sub-path will not be drawn at all, (since the correct orientation is indeterminate).
    ///
    /// In no case will a cap style of CAIRO_LINE_CAP_BUTT cause anything to be drawn in the case of either degenerate segments or sub-paths.
    @inlinable func stroke() { cairo_stroke(_ptr) }

    /// Drawing operator that strokes the current path according to the current line width, line join, line cap, and dash settings. Unlike cairo_stroke(), cairo_stroke_preserve() preserves the path within the cairo context.
    ///
    /// See lineWidth, lineJoin, lineCap, dash, setDash(), and stroke().
    @inlinable func strokePreserve() { cairo_stroke_preserve(_ptr) }

    /// Computes a bounding box in user coordinates covering the area that would be affected, (the "inked" area), by a cairo_stroke() operation given the current path and stroke parameters. If the current path is empty, returns an empty rectangle ((0,0), (0,0)). Surface dimensions and clipping are not taken into account.
    ///
    /// Note that if the line width is set to exactly zero, then strokeExtents will return an empty rectangle. Contrast with pathExtents which can be used to compute the non-empty bounds as the line width approaches zero.
    ///
    /// Note that strokeExtents must necessarily do more work to compute the precise inked areas in light of the stroke parameters, so pathExtents may be more desirable for sake of performance if non-inked path extents are desired.
    ///
    /// See stroke(), lineWidth, lineJoin, lineCap, dash, setDash(), and strokePreserve().
    /// - Returns:
    ///   - x1: left of the resulting extents
    ///   - y1: top of the resulting extents
    ///   - x2: right of the resulting extents
    ///   - y2: bottom of the resulting extents
    @inlinable var strokeExtents: (x1: Double, y1: Double, x2: Double, y2: Double) {
        var x1: Double = 0.0
        var y1: Double = 0.0
        var x2: Double = 0.0
        var y2: Double = 0.0
        cairo_fill_extents(_ptr, &x1, &y1, &x2, &y2)
        return (x1, y1, x2, y2)
    }

    /// Tests whether the given point is inside the area that would be affected by a cairo_stroke() operation given the current path and stroking parameters. Surface dimensions and clipping are not taken into account.
    ///
    /// See stroke(), lineWidth, lineJoin, lineCap, dash, setDash(), and strokePreserve().
    @inlinable func isInStroke(_ x: Double, _ y: Double) -> Bool {
        return cairo_in_stroke(_ptr, x, y) != 0
    }

    /// Emits the current page for backends that support multiple pages, but doesn't clear it, so, the contents of the current page will be retained for the next page too. Use showPage() if you want to get an empty page after the emission.
    ///
    /// This is a convenience method that simply calls cairo_surface_copy_page() on cr 's target.
    @inlinable func copyPage() { cairo_copy_page(_ptr) }

    /// Emits and clears the current page for backends that support multiple pages. Use cairo_copy_page() if you don't want to clear the page.
    ///
    /// This is a convenience function that simply calls cairo_surface_show_page() on cr 's target.
    @inlinable func showPage() { cairo_show_page(_ptr) }

    /// Return user data previously attached to cr using the specified key. If no user data has been attached with the given key this function returns NULL.
    ///
    /// - Parameters:
    ///   - key: the address of the cairo_user_data_key_t the user data was attached to
    @inlinable func userData(key: UnsafePointer<cairo_user_data_key_t>) -> UnsafeMutableRawPointer {
        return cairo_get_user_data(_ptr, key)
    }

    /// Attach user data to cr . To remove user data from a surface, call this function with the key that was used to set it and NULL for data .
    /// - Parameters:
    ///   - key: the address of a cairo_user_data_key_t to attach the user data to
    ///   - value: the user data to attach to the cairo_t
    ///   - destroy: a cairo_destroy_func_t which will be called when the cairo_t is destroyed or when new user data is attached using the same key.
    /// - Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a slot could not be allocated for the user data.
    @discardableResult
    @inlinable func setUserData(key: UnsafePointer<cairo_user_data_key_t>, value: UnsafeMutableRawPointer, destroy: cairo_destroy_func_t! = nil) -> cairo_status_t {
        return cairo_set_user_data(_ptr, key, value, destroy)
    }

    // MARK: - Bezier Paths

    /// Clears the current path. After this call there will be no path and no current point.
    @inlinable func newPath() { cairo_new_path(_ptr) }

    /// Creates a copy of the current path and returns it to the user as a cairo_path_t. See cairo_path_data_t for hints on how to iterate over the returned data structure.
    ///
    /// This function will always return a valid pointer, but the result will have no data (data==NULL and num_data==0), if either of the following conditions hold:
    ///
    /// If there is insufficient memory to copy the path. In this case path->status will be set to CAIRO_STATUS_NO_MEMORY.
    /// If cr is already in an error state. In this case path->status will contain the same status that would be returned by cairo_status().
    /// - Returns: The copy of the current path.
    @inlinable var path: PathRef { return PathRef(cairo_copy_path(_ptr)) }

    /// flattened copy of the current path and returns it to the user as a cairo_path_t. See cairo_path_data_t for hints on how to iterate over the returned data structure.
    ///
    /// This function is like path except that any curves in the path will be approximated with piecewise-linear approximations, (accurate to within the current tolerance value). That is, the result is guaranteed to not have any elements of type CAIRO_PATH_CURVE_TO which will instead be replaced by a series of CAIRO_PATH_LINE_TO elements.
    ///
    /// This function will always return a valid pointer, but the result will have no data (data==NULL and num_data==0), if either of the following conditions hold:
    ///
    /// If there is insufficient memory to copy the path. In this case path->status will be set to CAIRO_STATUS_NO_MEMORY.
    /// If cr is already in an error state. In this case path->status will contain the same status that would be returned by status().
    @inlinable var flatPath: PathRef {
        return PathRef(cairo_copy_path_flat(_ptr))
    }

    /// Append the path onto the current path. The path may be either the return value from one of cairo_copy_path() or cairo_copy_path_flat() or it may be constructed manually. See cairo_path_t for details on how the path data structure should be initialized, and note that path->status must be initialized to CAIRO_STATUS_SUCCESS.
    /// - Parameters:
    ///   - path: Path to be appended
    @inlinable func append<P: PathProtocol>(path: P) {
        cairo_append_path(_ptr, path._ptr)
    }

    /// Returns whether a current point is defined on the current path. See `currentPoint` for details on the current point.
    @inlinable var hasCurrentPoint: Bool {
        return cairo_has_current_point(_ptr) != 0
    }

    /// Gets the current point of the current path, which is conceptually the final point reached by the path so far.
    ///
    ///The current point is returned in the user-space coordinate system. If there is no defined current point or if cr is in an error status, x and y will both be set to 0.0. It is possible to check this in advance with cairo_has_current_point().
    ///
    /// Most path construction functions alter the current point. See the following for details on how they affect the current point: cairo_new_path(), cairo_new_sub_path(), cairo_append_path(), cairo_close_path(), cairo_move_to(), cairo_line_to(), cairo_curve_to(), cairo_rel_move_to(), cairo_rel_line_to(), cairo_rel_curve_to(), cairo_arc(), cairo_arc_negative(), cairo_rectangle(), cairo_text_path(), cairo_glyph_path(), cairo_stroke_to_path().
    ///
    /// Some functions use and alter the current point but do not otherwise change current path: cairo_show_text().
    ///
    /// Some functions unset the current path and as a result, current point: cairo_fill(), cairo_stroke().
    @inlinable var currentPoint: (x: Double, y: Double) {
        var x = 0.0, y = 0.0
        cairo_get_current_point(_ptr, &x, &y)
        return (x, y)
    }

    /// Begin a new sub-path. Note that the existing path is not affected. After this call there will be no current point.
    ///
    /// In many cases, this call is not needed since new sub-paths are frequently started with moveTo().
    ///
    /// A call to `newSubPath()` is particularly useful when beginning a new sub-path with one of the arc() calls. This makes things easier as it is no longer necessary to manually compute the arc's initial coordinates for a call to moveTo().
    @inlinable func newSubPath() { cairo_new_sub_path(_ptr) }

    /// Adds a line segment to the path from the current point to the beginning of the current sub-path, (the most recent point passed to moveTo()), and closes this sub-path. After this call the current point will be at the joined endpoint of the sub-path.
    ///
    /// The behavior of closePath() is distinct from simply calling lineTo() with the equivalent coordinate in the case of stroking. When a closed sub-path is stroked, there are no caps on the ends of the sub-path. Instead, there is a line join connecting the final and initial segments of the sub-path.
    ///
    /// If there is no current point before the call to closePath(), this function will have no effect.
    ///
    /// Note: As of cairo version 1.2.4 any call to closePath() will place an explicit MOVE_TO element into the path immediately after the CLOSE_PATH element, (which can be seen in cairo_copy_path() for example). This can simplify path processing in some cases as it may not be necessary to save the "last move_to point" during processing as the MOVE_TO immediately after the CLOSE_PATH will provide that point.
    @inlinable func closePath() { cairo_close_path(_ptr) }

    /// Adds a circular arc of the given radius to the current path. The arc is centered at (xc , yc ), begins at angle1 and proceeds in the direction of increasing angles to end at angle2 . If angle2 is less than angle1 it will be progressively increased by .pi*2 until it is greater than angle1 .
    ///
    /// If there is a current point, an initial line segment will be added to the path to connect the current point to the beginning of the arc. If this initial line is undesired, it can be avoided by calling cairo_new_sub_path() before calling cairo_arc().
    ///
    /// Angles are measured in radians. An angle of 0.0 is in the direction of the positive X axis (in user space). An angle of .pi/2.0 radians (90 degrees) is in the direction of the positive Y axis (in user space). Angles increase in the direction from the positive X axis toward the positive Y axis. So with the default transformation matrix, angles increase in a clockwise direction.
    ///
    /// (To convert from degrees to radians, use degrees * (.pi / 180.).)
    ///
    /// This function gives the arc in the direction of increasing angles; see cairo_arc_negative() to get the arc in the direction of decreasing angles.
    ///
    /// The arc is circular in user space. To achieve an elliptical arc, you can scale the current transformation matrix by different amounts in the X and Y directions. For example, to draw an ellipse in the box given by x , y , width , height :
    ///
    ///     cr.save();
    ///     cr.translate(x + width / 2., y + height / 2.);
    ///     cr.scale(width / 2., height / 2.);
    ///     cr.arc(xc: 0, yc: 0, radius: 1, angle1: 0, angle2: .pi * 2);
    ///     cr.restore();
    @inlinable func arc(xc: Double = 0, yc: Double = 0, radius: Double = 1, angle1: Double = 0, angle2: Double = .pi*2) {
        cairo_arc(_ptr, xc, yc, radius, angle1, angle2)
    }

    /// Adds a circular arc of the given radius to the current path. The arc is centered at (xc , yc ), begins at angle1 and proceeds in the direction of decreasing angles to end at angle2 . If angle2 is greater than angle1 it will be progressively decreased by .pi*2 until it is less than angle1 .
    ///
    /// See arc() for more details. This function differs only in the direction of the arc between the two angles.
    @inlinable func arcNegative(xc: Double = 0, yc: Double = 0, radius: Double = 1, angle1: Double = .pi*2, angle2: Double = 0) {
        cairo_arc_negative(_ptr, xc, yc, radius, angle1, angle2)
    }

    /// Adds a cubic Bézier spline to the path from the current point to position (x3 , y3 ) in user-space coordinates, using (x1 , y1 ) and (x2 , y2 ) as the control points. After this call the current point will be (x3 , y3 ).
    /// If there is no current point before the call to curveTo() this function will behave as if preceded by a call to moveTo(cr , x1 , y1 ).
    /// - Parameters:
    ///   - x1: the X coordinate of the first control point
    ///   - y1: the Y coordinate of the first control point
    ///   - x2: the X coordinate of the second control point
    ///   - y2: the Y coordinate of the second control point
    ///   - x3: the X coordinate of the end of the curve
    ///   - y3: the Y coordinate of the end of the curve
    @inlinable func curveTo(x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double) {
        cairo_curve_to(_ptr, x1, y1, x2, y2, x3, y3)
    }

    /// Adds a line to the path from the current point to position (x , y ) in user-space coordinates. After this call the current point will be (x , y ).
    ///
    /// If there is no current point before the call to cairo_line_to() this function will behave as cairo_move_to(cr , x , y ).
    ///
    /// - Parameters:
    ///   - x: the X coordinate of the end of the new line
    ///   - y: the Y coordinate of the end of the new line
    @inlinable func lineTo(_ x: Double, _ y: Double) { cairo_line_to(_ptr, x, y) }

    /// Begin a new sub-path. After this call the current point will be (x , y ).
    ///
    /// - Parameters:
    ///   - x: the X coordinate of the end of the new position
    ///   - y: the Y coordinate of the end of the new position
    @inlinable func moveTo(_ x: Double, _ y: Double) { cairo_move_to(_ptr, x, y) }

    /// Adds a closed sub-path rectangle of the given size to the current path at position (x , y ) in user-space coordinates.
    ///
    /// This function is logically equivalent to:
    ///
    ///     cr.moveTo(x, y);
    ///     cr.relLineTo(width, 0);
    ///     cr.relLineTo(0, height);
    ///     cr.relLineTo(-width, 0);
    ///     cr.closePath();
    @inlinable func rectangle(x: Double, y: Double, width: Double, height: Double) {
        cairo_rectangle(_ptr, x, y, width, height)
    }

    /// Adds closed paths for the glyphs to the current path. The generated path if filled, achieves an effect similar to that of showGlyphs().
    @inlinable func glyphPath(glyphs: [cairo_glyph_t]) {
        cairo_glyph_path(_ptr, glyphs, Int32(glyphs.count))
    }

    /// Adds closed paths for text to the current path.  The generated
    /// path if filled, achieves an effect similar to that of
    /// showText().
    ///
    /// Text conversion and positioning is done similar to cairo_show_text().
    ///
    /// Like showText(), after this call the current point is
    /// moved to the origin of where the next glyph would be placed in
    /// this same progression.  That is, the current point will be at
    /// the origin of the final glyph offset by its advance values.
    /// This allows for chaining multiple calls to to cairo_text_path()
    /// without having to set current point in between.
    ///
    /// Note: The textPath() function call is part of what the cairo
    /// designers call the "toy" text API. It is convenient for short demos
    /// and simple programs, but it is not expected to be adequate for
    /// serious text-using applications. See cairo_glyph_path() for the
    /// "real" text path API in cairo.
    @inlinable func textPath(_ text: UnsafePointer<CChar>) {
        cairo_text_path(_ptr, text)
    }
    
    /// Relative-coordinate version of cairo_curve_to(). All offsets are relative to the current point. Adds a cubic Bézier spline to the path from the current point to a point offset from the current point by (dx3 , dy3 ), using points offset by (dx1 , dy1 ) and (dx2 , dy2 ) as the control points. After this call the current point will be offset by (dx3 , dy3 ).
    ///
    /// Given a current point of (x, y), cr.relCurveTo(dx1 , dy1 , dx2 , dy2 , dx3 , dy3 ) is logically equivalent to cr.curveTo(x+dx1 , y+dy1 , x+dx2 , y+dy2 , x+dx3 , y+dy3 ).
    ///
    /// It is an error to call this function with no current point. Doing so will cause cr to shutdown with a status of CAIRO_STATUS_NO_CURRENT_POINT.
    /// - Parameters:
    ///   - dx1: the X offset of the first control point
    ///   - dy1: the Y offset of the first control point
    ///   - dx2: the X offset of the second control point
    ///   - dy2: the Y offset of the second control point
    ///   - dx3: the X offset of the end of the curve
    ///   - dy3: the Y offset of the end of the curve
    @inlinable func relCurveTo(dx1: Double, dy1: Double, dx2: Double, dy2: Double, dx3: Double, dy3: Double) {
        cairo_rel_curve_to(_ptr, dx1, dy1, dx2, dy2, dx3, dy3)
    }

    /// Relative-coordinate version of lineTo(). Adds a line to the path from the current point to a point that is offset from the current point by (dx , dy ) in user space. After this call the current point will be offset by (dx , dy ).
    ///
    /// Given a current point of (x, y), relLineTo(dx , dy ) is logically equivalent to lineTo(x + dx , y + dy ).
    ///
    /// It is an error to call this function with no current point. Doing so will cause cr to shutdown with a status of CAIRO_STATUS_NO_CURRENT_POINT.
    ///
    /// - Parameters:
    ///   - dx: the X offset of the end of the new line
    ///   - dy: the Y offset of the end of the new line
    @inlinable func relLineTo(_ dx: Double, _ dy: Double) {
        cairo_rel_line_to(_ptr, dx, dy)
    }
    
    /// Begin a new sub-path. After this call the current point will offset by (x , y ).
    ///
    /// Given a current point of (x, y), relMoveTo(dx , dy ) is logically equivalent to moveTo(x + dx , y + dy ).
    ///
    /// It is an error to call this function with no current point. Doing so will cause cr to shutdown with a status of CAIRO_STATUS_NO_CURRENT_POINT.
    ///
    /// - Parameters:
    ///   - x: the X coordinate of the end of the new position
    ///   - y: the Y coordinate of the end of the new position
    @inlinable func relMoveTo(_ dx: Double, _ dy: Double) {
        cairo_rel_move_to(_ptr, dx, dy)
    }

    /// Computes a bounding box in user-space coordinates covering the points on the current path. If the current path is empty, returns an empty rectangle ((0,0), (0,0)). Stroke parameters, fill rule, surface dimensions and clipping are not taken into account.
    ///
    /// Contrast with `fillExtents` and `strokeExtents` which return the extents of only the area that would be "inked" by the corresponding drawing operations.
    ///
    /// The result of `pathExtents` is defined as equivalent to the limit of `strokeExtents` with `CAIRO_LINE_CAP_ROUND` as the line width approaches 0.0, (but never reaching the empty-rectangle returned by `strokeExtents` for a line width of 0.0).
    ///
    /// Specifically, this means that zero-area sub-paths such as moveTo(); lineTo() segments, (even degenerate cases where the coordinates to both calls are identical), will be considered as contributing to the extents. However, a lone moveTo() will not contribute to the results of `pathExtents`.
    @inlinable var pathExtents: (x1: Double, y1: Double, x2: Double, y2: Double) {
        var x1: Double = 0.0
        var y1: Double = 0.0
        var x2: Double = 0.0
        var y2: Double = 0.0
        cairo_path_extents(_ptr, &x1, &y1, &x2, &y2)
        return (x1, y1, x2, y2)
    }
}

public extension PathProtocol {
    /// Typed pointer to the underlying path
    @inlinable var path_ptr: UnsafeMutablePointer<cairo_path_t>! { _ptr }
}
