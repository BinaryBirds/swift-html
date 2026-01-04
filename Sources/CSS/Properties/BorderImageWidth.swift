//
//  BorderImageWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderImageWidthValue {
    /// A length unit (px) specifying the size of the border-width    Play it »
    case length(Unit)
    /// Default value 1. Represents multiples of the corresponding border-width    Play it »
    case number(Double)
    /// If specified, the width is the intrinsic width or height of the corresponding image slice
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .number(let value):
            return String(value)
        case .auto:
            return "auto"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct BorderImageWidth: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-image-width" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderImageWidth {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderImageWidth {

    /// Specifies the width of the border image
    public init(_ value: BorderImageWidthValue) {
        self.init(value.rawValue)
    }
}
