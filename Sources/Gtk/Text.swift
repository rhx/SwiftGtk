//
//  Text.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject
import GIO

/// Text view convenience methods
public extension TextViewProtocol {
    var text: String {
        get {
            let text = TextBufferRef(buffer).text
            return text
        }
        set {
            var b = TextBufferRef(buffer)
            b.text = newValue
        }
    }
}

/// A holder for the bounds of a text buffer
class BoundsIter: TextIter {
    /// the actual text iterator
    var iter = GtkTextIter()

    /// default constructor
    ///
    /// - returns: an iterator with the pointer pointing to the internal var
    init() {
        super.init(&iter)
    }
}


/// Text buffer convenience mentods
public extension TextBufferProtocol {
    /// A string containing the text stored inside the text buffer,
    /// including hidden characters
    var text: String {
        get {
            let text = ptr.withMemoryRebound(to: GtkTextBuffer.self, capacity: 1) { (buf: UnsafeMutablePointer<GtkTextBuffer>) -> String in
                var beg = GtkTextIter()
                var end = GtkTextIter()
                gtk_text_buffer_get_bounds(buf, &beg, &end)
                return getText(start: TextIterRef(&beg), end: TextIterRef(&end), includeHiddenChars: true) ?? ""
            }
            return text
        }
        set {
            set(text: newValue, len: -1)
        }
    }

    /// bounds for the start and end of the text buffer
    var bounds: (start: TextIter, end: TextIter) {
        let beg = BoundsIter()
        let end = BoundsIter()
        gtk_text_buffer_get_bounds(ptr.withMemoryRebound(to: GtkTextBuffer.self, capacity: 1) { $0 }, beg.ptr, end.ptr)
        return (start: beg, end: end)
    }
}

public extension TextBuffer {
    /// Default contstructor
    ///
    /// - returns: a new text buffer with a new tag table
    convenience init?() {
        guard let buffer = gtk_text_buffer_new(nil) else { return nil }
        self.init(buffer)
    }
}

