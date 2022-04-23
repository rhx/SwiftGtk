//
//  CoglPango.swift
//  CoglPango
//
//  Created by Rene Hexel on 25/9/16.
//
//
import CGLib
import CPango
import CCogl
import CCoglPango
import GLib
import GLibObject
import Pango
import PangoCairo

/// Font map protocol
public typealias FontMapProtocol = PangoCairo.FontMapProtocol

/// Font map reference
public typealias FontMapRef = PangoCairo.FontMapRef

/// This updates any internal glyph cache textures as necessary to be
/// able to render the given @layout.
///
/// This api should be used to avoid mid-scene modifications of
/// glyph-cache textures which can lead to undefined rendering results.
public extension Layout {
    func ensureGlyphCache() {
        ensureGlyphCacheFor(layout: LayoutRef(layout_ptr))
    }
}
