//
//  ZIndex.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ZIndexValue: String {
    /// Sets the stack order equal to its parents. This is default
    case auto
    /// Sets the stack order of the element. Negative numbers are allowed
    case number
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct ZIndex: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "z-index" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ZIndex {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ZIndex {

    /// Sets the stack order of a positioned element
    public init(_ value: ZIndexValue = .auto) {
        self.init(value.rawValue)
    }
}
