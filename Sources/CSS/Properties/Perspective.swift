//
//  Perspective.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PerspectiveValue {
    /// How far the element is placed from the view
    case length(Unit)
    /// Default value. Same as 0. The perspective is not set
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .none:
            return "none"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Perspective: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "perspective" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Perspective {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Perspective {

    /// Gives a 3D-positioned element some perspective
    public init(_ value: PerspectiveValue = .none) {
        self.init(value.rawValue)
    }

    /// Gives a 3D-positioned element some perspective
    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
