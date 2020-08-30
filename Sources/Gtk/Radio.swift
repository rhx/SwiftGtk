//
//  Radio.swift
//  Gtk
//
//  Created by Rene Hexel on 17/3/19.
//  Copyright © 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGdk
import CGtk
import GLib
import Gdk

public extension RadioButton {
    /// Create a group of radio buttons with the given array of labels
    ///
    /// - Parameter labels: array of labels for the radio buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupWith(labels: [String]) -> [RadioButton] {
        var previousButton: RadioButton?
        return labels.map {
            let button: RadioButton
            if let prev = previousButton {
                button = RadioButton(group: prev.group, label: $0)
            } else {
                button = RadioButton(label: $0)
            }
            previousButton = button
            return button
        }
    }

    /// Create a group of radio buttons with the given labels
    ///
    /// - Parameter ls: labels to use for the radio buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupLabeled(_ ls: String...)  -> [RadioButton] {
        return groupWith(labels: ls)
    }

    /// Create a group of radio buttons with the given labels.
    /// Underscores in the labels denote the mnemonics for the corresponding buttons.
    ///
    /// - Parameter mnemonics: labels to use for the buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupWith(mnemonics: [String]) -> [RadioButton] {
        var previousButton: RadioButton?
        return mnemonics.map {
            let button: RadioButton
            if let prev = previousButton {
                button = RadioButton(group: prev.group, mnemonic: $0)
            } else {
                button = RadioButton(mnemonic: $0)
            }
            previousButton = button
            return button
        }
    }

    /// Create a group of radio buttons with the given labels
    /// Underscores in the labels denote the mnemonics for the corresponding buttons.
    ///
    /// - Parameter ms: labels to use for the buttons
    /// - Returns: grouped array of radio buttons
    @inlinable static func groupWithMnemonics(_ ms: String...)  -> [RadioButton] {
        return groupWith(mnemonics: ms)
    }
}
