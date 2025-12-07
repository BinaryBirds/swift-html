//
//  PageBreakAfter.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PageBreakAfterValue: String {
    /// Default. Automatic page-break
    case auto
    /// Always insert a page-break after the element
    case always
    /// Avoid a page-break after the element (if possible)
    case avoid
    /// Insert page-break after the element so that the next page is formatted as a left page
    case left
    /// Insert page-break after the element so that the next page is formatted as a right page
    case right
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func PageBreakAfter(_ value: String) -> Property {
    Property(name: "page-break-after", value: value)
}

/// Sets the page-break behavior after an element
public func PageBreakAfter(_ value: PageBreakAfterValue = .auto) -> Property {
    PageBreakAfter(value.rawValue)
}
