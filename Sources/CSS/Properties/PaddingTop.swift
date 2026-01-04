//
//  PaddingTop.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct PaddingTop: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "padding-top" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PaddingTop {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PaddingTop {

    /// Sets the top padding of an element
    public init(_ value: PaddingValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    /// Sets the top padding of an element
    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
