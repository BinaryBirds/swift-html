//
//  TextJustify.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextJustifyValue: String {
    /// The browser determines the justification algorithm    Play it »
    case auto
    /// Increases/Decreases the space between words    Play it »
    case interWord = "inter-word"
    /// Increases/Decreases the space between characters    Play it »
    case interCharacter = "inter-character"
    /// Disables justification methods    Play it »
    case none
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct TextJustify: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-justify" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextJustify {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextJustify {

    /// Specifies the justification method used when text-align is "justify"
    public init(_ value: TextJustifyValue = .auto) {
        self.init(value.rawValue)
    }
}
