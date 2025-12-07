//
//  BreakBefore.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BreakBeforeValue: String {
    /// Default. Automatic page/column/region break before the element
    case auto
    /// Always insert a page-break right before the principal box
    case all
    /// Always insert a page-break before the element
    case always
    /// Avoid a page/column/region break before the element
    case avoid
    /// Avoid a column-break before the element
    case avoidColumn = "avoid-column"
    /// Avoid a page-break before the element
    case avoidPage = "avoid-page"
    /// Avoid a region-break before the element
    case avoidRegion = "avoid-region"
    /// Always insert a column-break before the element
    case column
    /// Insert one or two page-breaks before the element so that the next page is formatted as a left page
    case left
    /// Always insert a page-break before the element
    case page
    /// Insert one or two page-breaks before the principal box so that the next page is formatted as a recto page
    case recto
    /// Always insert a region-break before the element
    case region
    /// Insert one or two page-breaks before the element so that the next page is formatted as a right page
    case right
    /// Insert one or two page-breaks before the principal box so that the next page is formatted as a verso page
    case verso
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func BreakBefore(_ value: String) -> Property {
    Property(name: "break-before", value: value)
}

/// Specifies whether or not a page-, column-, or region-break should occur before the specified element
public func BreakBefore(_ value: BreakBeforeValue = .auto) -> Property {
    BreakBefore(value.rawValue)
}
