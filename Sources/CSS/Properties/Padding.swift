//
//  Padding.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PaddingValue {
    /// Specifies a fixed bottom padding in px, pt, cm, etc. Default value is 0.
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

public func Padding(_ value: String) -> Property {
    Property(name: "padding", value: value)
}

/// Sets all the Padding properties in one declaration
public func Padding(_ value: PaddingValue = .length(.zero)) -> Property {
    Padding(value.rawValue)
}

public func Padding(_ value: Unit = .zero) -> Property {
    Padding(.length(value))
}

public func Padding(
    horizontal: PaddingValue = .length(.zero),
    vertical: PaddingValue = .length(.zero)
) -> Property {
    Padding(horizontal.rawValue + " " + vertical.rawValue)
}

public func Padding(
    horizontal: Unit = .zero,
    vertical: Unit = .zero
) -> Property {
    Padding(horizontal: .length(horizontal), vertical: .length(vertical))
}

public func Padding(
    top: PaddingValue = .length(.zero),
    right: PaddingValue = .length(.zero),
    bottom: PaddingValue = .length(.zero),
    left: PaddingValue = .length(.zero)
) -> Property {
    Padding(
        top.rawValue + " " + right.rawValue + " " + bottom.rawValue + " "
            + left.rawValue
    )
}

public func Padding(
    top: Unit = .zero,
    right: Unit = .zero,
    bottom: Unit = .zero,
    left: Unit = .zero
) -> Property {
    Padding(
        top: .length(top),
        right: .length(right),
        bottom: .length(bottom),
        left: .length(left)
    )
}
