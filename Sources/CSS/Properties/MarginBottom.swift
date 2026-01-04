//
//  MarginBottom.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Sets the bottom margin of an element

public struct MarginBottom: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "margin-bottom" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> MarginBottom {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension MarginBottom {

    public init(_ value: MarginValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
