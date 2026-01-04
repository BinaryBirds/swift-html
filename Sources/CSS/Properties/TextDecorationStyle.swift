//
//  TextDecorationStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextDecorationStyleValue: String {
    /// Default value. The line will display as a single line    Play it »
    case solid
    /// The line will display as a double line    Play it »
    case double
    /// The line will display as a dotted line    Play it »
    case dotted
    /// The line will display as a dashed line    Play it »
    case dashed
    /// The line will display as a wavy line    Play it »
    case wavy
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct TextDecorationStyle: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-decoration-style" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextDecorationStyle {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextDecorationStyle {

    /// Specifies the style of the line in a text decoration
    public init(_ value: TextDecorationStyleValue = .solid) {
        self.init(value.rawValue)
    }
}
