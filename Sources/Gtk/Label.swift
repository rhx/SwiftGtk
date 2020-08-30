//
//  Label.swift
//  Gtk
//
//  Created by Rene Hexel on 3/10/19.
//  Copyright © 2019, 2020 Rene Hexel.  All rights reserved.
//
public extension Label {
    /// Creates a new label with the given text.
    ///
    /// This is a convenience initialiser that will simply call `init(str:)` with the given string.
    /// - SeeAlso: `init(str:)`
    /// - SeeAlso: `init(mnemonic:)`
    /// - Parameter text: the text to display.
    /// - Note: For a constructor that allows underlined mnemonics and keyboard shortcuts, see `init(mnemonic:)`
    @inlinable convenience init(text: String) {
        self.init(str: text)
    }
}
