//
//  PaddingRight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct PaddingRight: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "padding-right" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PaddingRight {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PaddingRight {

    /// Sets the right padding of an element
    public init(_ value: PaddingValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    /// Sets the right padding of an element
    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
