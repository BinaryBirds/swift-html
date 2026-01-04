//
//  BorderImageOutset.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderImageOutsetValue {
    /// A length unit specifying how far from the edges the border-image will appear. Default value is 0
    case length(Unit)
    /// Represent multiples of the corresponding border-width
    case number(Double)
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
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct BorderImageOutset: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-image-outset" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderImageOutset {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderImageOutset {

    /// Specifies the amount by which the border image area extends beyond the border box
    public init(_ value: BorderImageOutsetValue) {
        self.init(value.rawValue)
    }
}
