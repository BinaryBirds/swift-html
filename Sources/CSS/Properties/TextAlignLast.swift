//
//  TextAlignLast.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextAlignLastValue: String {
    /// Default value. The last line is justified and aligned left    Play it »
    case auto
    /// The last line is aligned to the left    Play it »
    case left
    /// The last line is aligned to the right    Play it »
    case right
    /// The last line is center-aligned    Play it »
    case center
    /// The last line is justified as the rest of the lines    Play it »
    case justify
    /// The last line is aligned at the beginning of the line (left if the text-direction is left-to-right, and right is the text-direction is right-to-left)    Play it »
    case start
    /// The last line is aligned at the end of the line (right if the text-direction is left-to-right, and left is the text-direction is right-to-left)    Play it »
    case end
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct TextAlignLast: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-align-last" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextAlignLast {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextAlignLast {

    /// Describes how the last line of a block or a line right before a forced line break is aligned when text-align is "justify"
    public init(_ value: TextAlignLastValue = .auto) {
        self.init(value.rawValue)
    }
}
