//
//  Clear.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ClearValue: String {
    /// Default. The element is not pushed below left or right floated elements
    case none
    /// The element is pushed below left floated elements
    case left
    /// The element is pushed below right floated elements
    case right
    /// The element is pushed below both left and right floated elements
    case both
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Clear: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "clear" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Clear {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Clear {

    /// Specifies what should happen with the element that is next to a floating element
    public init(_ value: ClearValue) {
        self.init(value.rawValue)
    }
}
