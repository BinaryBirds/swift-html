//
//  Isolation.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum IsolationValue: String {
    /// Default. A new stacking context is created only if one of the properties applied to the element requires it
    case auto
    /// A new stacking context must be created
    case isolate
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Isolation: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "isolation" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Isolation {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Isolation {

    /// Defines whether an element must create a new stacking content
    public init(_ value: IsolationValue = .auto) {
        self.init(value.rawValue)
    }
}
