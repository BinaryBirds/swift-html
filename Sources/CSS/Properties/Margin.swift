//
//  Margin.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MarginValue {
    /// Specifies a fixed bottom margin in px, cm, em, etc. Default value is 0. Negative values are allowed.
    case length(Unit)
    // The browser calculates a bottom margin
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct Margin: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "margin" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Margin {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Margin {

    /// Sets all the margin properties in one declaration
    public init(_ value: MarginValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }

    public init(
        horizontal: MarginValue = .length(.zero),
        vertical: MarginValue = .length(.zero)
    ) {
        self.init(horizontal.rawValue + " " + vertical.rawValue)
    }

    public init(
        horizontal: Unit = .zero,
        vertical: Unit = .zero
    ) {
        self.init(horizontal: .length(horizontal), vertical: .length(vertical))
    }

    public init(
        top: MarginValue = .length(.zero),
        right: MarginValue = .length(.zero),
        bottom: MarginValue = .length(.zero),
        left: MarginValue = .length(.zero)
    ) {
        self.init(
            top.rawValue + " " + right.rawValue + " " + bottom.rawValue + " "
                + left.rawValue
        )
    }

    public init(
        top: Unit = .zero,
        right: Unit = .zero,
        bottom: Unit = .zero,
        left: Unit = .zero
    ) {
        self.init(
            top: .length(top),
            right: .length(right),
            bottom: .length(bottom),
            left: .length(left)
        )
    }
}
