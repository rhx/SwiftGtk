//
//  ActionGroup.swift
//  Gtk
//
//  Created by Rene Hexel on 30/8/20.
//  Copyright © 2020 Rene Hexel.  All rights reserved.
//
import CGtk

public extension ActionGroupProtocol {
    /// Typed pointer to the underlying `GActionGroup` instance.
    @inlinable var gActionGroupPointer: UnsafeMutablePointer<GActionGroup>! { ptr.assumingMemoryBound(to: GActionGroup.self) }
}
