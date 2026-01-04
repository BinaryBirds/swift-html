//
//  ObjectPosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ObjectPositionValue {

    /// Specifies the position of the image or video inside its content box.
    /// First value controls the x-axis and the second value controls the y-axis.
    /// Can be a string (left, center or right), or a number (in px or %).
    /// Negative values are allowed
    case position(Unit, Unit?)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .position(let x, let y):
            return "\(x.rawValue) \(y?.rawValue ?? "50%")"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct ObjectPosition: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "object-position" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ObjectPosition {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ObjectPosition {

    /// Specifies the alignment of the replaced element inside its box
    public init(
        _ value: ObjectPositionValue = .position(.percent(50), .percent(50))
    ) {
        self.init(value.rawValue)
    }
}
