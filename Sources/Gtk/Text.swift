//
//  Text.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject
import GIO

/// Text view convenience methods
public extension TextViewProtocol {
    @inlinable var text: String {
        get {
            let text = TextBufferRef(buffer).text
            return text
        }
        nonmutating set {
            let b = TextBufferRef(buffer)
            b.text = newValue
        }
    }
}

/// A holder for the bounds of a text buffer
open class BoundsIter: TextIter {
    /// the actual text iterator
    @usableFromInline var iter = GtkTextIter()

    /// default constructor
    ///
    /// - returns: an iterator with the pointer pointing to the internal var
    @inlinable init() {
        let ptr = withUnsafeMutablePointer(to: &iter) { $0 }
        super.init(ptr)
    }
}


/// Text buffer convenience mentods
public extension TextBufferProtocol {
    /// A string containing the text stored inside the text buffer,
    /// including hidden characters
    @inlinable var text: String {
        get {
            let text = text_buffer_ptr.withMemoryRebound(to: GtkTextBuffer.self, capacity: 1) { (buf: UnsafeMutablePointer<GtkTextBuffer>) -> String in
                var beg = GtkTextIter()
                var end = GtkTextIter()
                gtk_text_buffer_get_bounds(buf, &beg, &end)
                return withExtendedLifetime(beg) {
                    withExtendedLifetime(end) {
                        withUnsafeMutablePointer(to: &beg) { beg in
                            withUnsafeMutablePointer(to: &end) { end in
                                getText(start: TextIterRef(beg), end: TextIterRef(end), includeHiddenChars: true) ?? ""
                            }
                        }
                    }
                }
            }
            return text
        }
        nonmutating set {
            set(text: newValue, len: -1)
        }
    }

    /// bounds for the start and end of the text buffer
    @inlinable var bounds: (start: TextIter, end: TextIter) {
        let beg = BoundsIter()
        let end = BoundsIter()
        gtk_text_buffer_get_bounds(text_buffer_ptr.withMemoryRebound(to: GtkTextBuffer.self, capacity: 1) { $0 }, beg.text_iter_ptr, end.text_iter_ptr)
        return (start: beg, end: end)
    }
}

public extension TextBuffer {
    /// Default contstructor
    ///
    /// - returns: a new text buffer with a new tag table
    @inlinable convenience init!() {
        guard let buffer = gtk_text_buffer_new(nil) else { return nil }
        self.init(buffer)
    }
}
