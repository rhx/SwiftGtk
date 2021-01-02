//
//  CheckButton.swift
//  Gtk
//
//  Created by Rene Hexel on 17/3/19.
//  Copyright © 2019, 2020, 2021 Rene Hexel.  All rights reserved.
//
import CGdk
import CGtk
import GLib
import Gdk

public extension CheckButton {
    /// Create a group of check buttons with the given array of labels
    ///
    /// - Parameter labels: array of labels for the check buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupWith(labels: [String]) -> [CheckButton] {
        var previousButton: CheckButton?
        return labels.map {
            let button = CheckButton(label: $0)
            if let prev = previousButton {
                button.set(group: prev)
                button.label = $0
            }
            previousButton = button
            return button
        }
    }

    /// Create a group of radio buttons with the given labels
    ///
    /// - Parameter ls: labels to use for the radio buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupLabeled(_ ls: String...)  -> [CheckButton] {
        return groupWith(labels: ls)
    }

    /// Create a group of check buttons with the given labels.
    /// Underscores in the labels denote the mnemonics for the corresponding buttons.
    ///
    /// - Parameter mnemonics: labels to use for the buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupWith(mnemonics: [String]) -> [CheckButton] {
        var previousButton: CheckButton?
        return mnemonics.map {
            let button = CheckButton(mnemonic: $0)
            if let prev = previousButton {
                button.set(group: prev)
                button.label = $0
            }
            previousButton = button
            return button
        }
    }

    /// Create a group of check buttons with the given labels
    /// Underscores in the labels denote the mnemonics for the corresponding buttons.
    ///
    /// - Parameter ms: labels to use for the buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupWithMnemonics(_ ms: String...)  -> [CheckButton] {
        return groupWith(mnemonics: ms)
    }
}
