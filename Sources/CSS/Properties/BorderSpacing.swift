//
//  BorderSpacing.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderSpacingValue {
    /// Specifies the distance between the borders of adjacent cells in px, cm, etc. Negative values are not allowed.
    /// If one value is specified, it defines both the horizontal and vertical spacing between cells
    /// If two values are specified, the first sets the horizontal spacing and the second sets the vertical spacing
    case length(Unit, Unit?)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let horizontal, let vertical):
            return [
                horizontal.rawValue,
                vertical?.rawValue,
            ]
            .compactMap { $0 }.joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct BorderSpacing: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-spacing" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderSpacing {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderSpacing {

    /// Sets the distance between the borders of adjacent cells
    public init(_ value: BorderSpacingValue) {
        self.init(value.rawValue)
    }
}
