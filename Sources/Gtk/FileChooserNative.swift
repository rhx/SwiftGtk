//
//  FileChooserNative.swift
//  Gtk
//
//  Created by Rene Hexel on 18/8/19.
//  Copyright © 2019 Rene Hexel.  All rights reserved.
//
import CGtk
import GtkCHelpers
import GLib
import GLibObject
import GIO

public extension FileChooserNative {
    /// Convenence initialiser to create a new, native file chooser
    /// - Parameter title: Title of the native file chooser or `nil`
    /// - Parameter action: File chooser kind, e.g. `.open` or `.save`
    /// - Parameter acceptLabel: Text of the accept button or `nil` for the default
    /// - Parameter cancelLabel: Text of the cancel button or `nil` for the default
    convenience init(title: UnsafePointer<gchar>? = nil, action: FileChooserAction = .open, acceptLabel: UnsafePointer<gchar>? = nil, cancelLabel: UnsafePointer<gchar>? = nil) {
        self.init(gtk_file_chooser_native_new(title, nil, action, acceptLabel, cancelLabel))
    }

    /// Convenence initialiser to create a new, native file chooser
    /// - Parameter title: Title of the native file chooser or `nil`
    /// - Parameter parent: parent window
    /// - Parameter action: File chooser kind, e.g. `.open` or `.save`
    /// - Parameter acceptLabel: Text of the accept button or `nil` for the default
    /// - Parameter cancelLabel: Text of the cancel button or `nil` for the default
    convenience init<W: WindowProtocol>(title: UnsafePointer<gchar>? = nil, parent: W, action: FileChooserAction = .open, acceptLabel: UnsafePointer<gchar>? = nil, cancelLabel: UnsafePointer<gchar>? = nil) {
        self.init(gtk_file_chooser_native_new(title, parent.window_ptr, action, acceptLabel, cancelLabel))
    }
}
