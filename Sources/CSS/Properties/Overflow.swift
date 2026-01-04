//
//  Overflow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OverflowValue: String {
    /// The overflow is not clipped. It renders outside the element's box. This is default
    case visible
    /// The overflow is clipped, and the rest of the content will be invisible
    case hidden
    /// The overflow is clipped, but a scroll-bar is added to see the rest of the content
    case scroll
    /// If overflow is clipped, a scroll-bar should be added to see the rest of the content
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct Overflow: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "overflow" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Overflow {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Overflow {

    /// Specifies what happens if content overflows an element's box
    public init(_ value: OverflowValue = .visible) {
        self.init(value.rawValue)
    }
}
