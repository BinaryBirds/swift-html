//
//  MarginTop.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Sets the top margin of an element

public struct MarginTop: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "margin-top" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> MarginTop {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension MarginTop {

    public init(_ value: MarginValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
