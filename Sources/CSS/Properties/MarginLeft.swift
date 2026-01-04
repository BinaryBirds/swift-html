//
//  MarginLeft.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Sets the left margin of an element

public struct MarginLeft: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "margin-left" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> MarginLeft {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension MarginLeft {

    public init(_ value: MarginValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
