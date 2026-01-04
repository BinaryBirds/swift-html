//
//  Opacity.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OpacityValue {
    /// Specifies the opacity. From 0.0 (fully transparent) to 1.0 (fully opaque)
    case number(Double)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .number(let value):
            return String(value)
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Opacity: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "opacity" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Opacity {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Opacity {

    /// Sets the opacity level for an element
    public init(_ value: OpacityValue = .number(1)) {
        self.init(value.rawValue)
    }

    /// Sets the opacity level for an element
    public init(_ value: Double = 1) {
        self.init(.number(value))
    }
}
