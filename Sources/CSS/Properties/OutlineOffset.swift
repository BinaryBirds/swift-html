//
//  OutlineOffset.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OutlineOffsetValue {
    /// The distance the outline is outset from the border edge. Default value is 0
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct OutlineOffset: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "outline-offset" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> OutlineOffset {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension OutlineOffset {

    /// Offsets an outline, and draws it beyond the border edge
    public init(_ value: OutlineOffsetValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    /// Offsets an outline, and draws it beyond the border edge
    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
