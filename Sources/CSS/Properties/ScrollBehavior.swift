//
//  ScrollBehavior.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ScrollBehaviorValue: String {
    /// Allows a straight jump "scroll effect" between elements within the scrolling box. This is default
    case auto
    /// Allows a smooth animated "scroll effect" between elements within the scrolling box.
    case smooth
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct ScrollBehavior: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "scroll-behavior" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ScrollBehavior {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ScrollBehavior {

    /// Specifies whether to smoothly animate the scroll position in a scrollable box, instead of a straight jump
    public init(_ value: ScrollBehaviorValue = .auto) {
        self.init(value.rawValue)
    }
}
