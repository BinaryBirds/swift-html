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

public struct Padding: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "padding" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Padding {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Padding {

    /// Sets all the Padding properties in one declaration
    public init(_ value: PaddingValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }

    public init(
        horizontal: PaddingValue = .length(.zero),
        vertical: PaddingValue = .length(.zero)
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
        top: PaddingValue = .length(.zero),
        right: PaddingValue = .length(.zero),
        bottom: PaddingValue = .length(.zero),
        left: PaddingValue = .length(.zero)
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
