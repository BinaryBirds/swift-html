//
//  TextOverflow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextOverflowValue: String {
    /// Default value. The text is clipped and not accessible    Play it »
    case clip
    /// Render an ellipsis ("...") to represent the clipped text    Play it »
    case ellipsis
    /// Render the given string to represent the clipped text
    case string
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TextOverflow(_ value: String) -> Property {
    Property(name: "text-overflow", value: value)
}

/// Specifies what should happen when text overflows the containing element
public func TextOverflow(_ value: TextOverflowValue = .clip) -> Property {
    TextOverflow(value.rawValue)
}
