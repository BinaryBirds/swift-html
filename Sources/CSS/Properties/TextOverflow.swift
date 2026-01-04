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

public struct TextOverflow: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-overflow" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextOverflow {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextOverflow {

    /// Specifies what should happen when text overflows the containing element
    public init(_ value: TextOverflowValue = .clip) {
        self.init(value.rawValue)
    }
}
