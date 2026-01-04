//
//  TransformOrigin.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransformOriginValue {
    // @TODO: keyword support
    /// x-axis    Defines where the view is placed at the x-axis. Possible values:
    /// left
    /// center
    /// right
    /// length
    /// %
    /// y-axis    Defines where the view is placed at the y-axis. Possible values:
    /// top
    /// center
    /// bottom
    /// length
    /// %
    /// z-axis    Defines where the view is placed at the z-axis (for 3D transformations). Possible values:
    /// length
    case values(Unit, Unit, Unit)
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .values(let x, let y, let z):
            return [x.rawValue, y.rawValue, z.rawValue].joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct TransformOrigin: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "transform-origin" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TransformOrigin {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TransformOrigin {

    /// Allows you to change the position on transformed elements
    public init(_ value: TransformOriginValue) {
        self.init(value.rawValue)
    }
}
