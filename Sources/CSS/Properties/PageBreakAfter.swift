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

public struct PageBreakAfter: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "page-break-after" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PageBreakAfter {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PageBreakAfter {

    /// Sets the page-break behavior after an element
    public init(_ value: PageBreakAfterValue = .auto) {
        self.init(value.rawValue)
    }
}
