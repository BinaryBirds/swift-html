//
//  PageBreakInside.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PageBreakInsideValue: String {
    /// Default. Automatic page-breaks
    case auto
    /// Avoid page-break inside the element (if possible)
    case avoid
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func PageBreakInside(_ value: String) -> Property {
    Property(name: "page-break-inside", value: value)
}

/// Sets the page-break behavior inside an element
public func PageBreakInside(_ value: PageBreakInsideValue = .auto) -> Property {
    PageBreakInside(value.rawValue)
}
