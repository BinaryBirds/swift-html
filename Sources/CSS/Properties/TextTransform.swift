//
//  TextTransform.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextTransformValue: String {
    /// No capitalization. The text renders as it is. This is default    Play it »
    case none
    /// Transforms the first character of each word to uppercase    Play it »
    case capitalize
    /// Transforms all characters to uppercase    Play it »
    case uppercase
    /// Transforms all characters to lowercase    Play it »
    case lowercase
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct TextTransform: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-transform" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextTransform {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextTransform {

    /// Controls the capitalization of text
    public init(_ value: TextTransformValue) {
        self.init(value.rawValue)
    }
}
