//
//  TextDecorationLine.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextDecorationLineValue: String {
    /// Default value. Specifies no line for the text-decoration    Play it »
    case none
    /// Specifies that a line will be displayed under the text    Play it »
    case underline
    /// Specifies that a line will be displayed over the text    Play it »
    case overline
    /// Specifies that a line will be displayed through the text    Play it »
    case lineThrough = "line-through"
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct TextDecorationLine: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-decoration-line" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextDecorationLine {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextDecorationLine {

    /// Specifies the type of line in a text-decoration
    public init(_ value: TextDecorationLineValue = .none) {
        self.init(value.rawValue)
    }
}
