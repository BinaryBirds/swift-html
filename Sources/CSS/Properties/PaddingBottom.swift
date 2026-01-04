//
//  PaddingBottom.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct PaddingBottom: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "padding-bottom" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PaddingBottom {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PaddingBottom {

    /// Sets the bottom padding of an element
    public init(_ value: PaddingValue = .length(.zero)) {
        self.init(value.rawValue)
    }

    /// Sets the bottom padding of an element
    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }
}
