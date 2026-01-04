//
//  PointerEvents.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PointerEventsValue: String {
    /// The element reacts to pointer events, like :hover and click. This is default
    case auto
    /// The element does not react to pointer events
    case none
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct PointerEvents: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "pointer-events" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PointerEvents {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PointerEvents {

    /// Defines whether or not an element reacts to pointer events
    public init(_ value: PointerEventsValue = .auto) {
        self.init(value.rawValue)
    }
}
