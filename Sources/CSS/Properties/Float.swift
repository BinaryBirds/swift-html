//
//  Float.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FloatValue: String {
    /// The element does not float, (will be displayed just where it occurs in the text). This is default
    case none
    /// The element floats to the left of its container
    case left
    /// The element floats the right of its container
    case right
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Float: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "float" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Float {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Float {

    /// Specifies whether an element should float to the left, right, or not at all
    public init(_ value: FloatValue = .none) {
        self.init(value.rawValue)
    }
}
