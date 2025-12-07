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

public func PointerEvents(_ value: String) -> Property {
    Property(name: "pointer-events", value: value)
}

/// Defines whether or not an element reacts to pointer events
public func PointerEvents(_ value: PointerEventsValue = .auto) -> Property {
    PointerEvents(value.rawValue)
}
