//
//  TextAlign.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextAlignValue: String {
    /// Aligns the text to the left    Play it »
    case left
    /// Aligns the text to the right    Play it »
    case right
    /// Centers the text    Play it »
    case center
    /// Stretches the lines so that each line has equal width (like in newspapers and magazines)    Play it »
    case justify
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct TextAlign: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-align" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextAlign {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextAlign {

    /// Specifies the horizontal alignment of text
    public init(_ value: TextAlignValue) {
        self.init(value.rawValue)
    }
}
