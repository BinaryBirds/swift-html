//
//  PageBreakBefore.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum PageBreakBeforeValue: String {
    /// Default. Automatic page-break
    case auto
    /// Always insert a page-break before the element
    case always
    /// Avoid page-break before the element (if possible)
    case avoid
    /// Insert page-break before the element so that the next page is formatted as a left page
    case left
    /// Insert page-break before the element so that the next page is formatted as a right page
    case right
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func PageBreakBefore(_ value: String) -> Property {
    Property(name: "page-break-before", value: value)
}

/// Sets the page-break behavior before an element
public func PageBreakBefore(_ value: PageBreakBeforeValue = .auto) -> Property {
    PageBreakBefore(value.rawValue)
}
