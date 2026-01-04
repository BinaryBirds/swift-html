//
//  Direction.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum DirectionValue: String {
    /// Text direction goes from left-to-right. This is default
    case ltr
    /// Text direction goes from right-to-left
    case rtl
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Direction: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "direction" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Direction {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Direction {

    /// Specifies the text direction/writing direction
    public init(_ value: DirectionValue = .ltr) {
        self.init(value.rawValue)
    }
}
