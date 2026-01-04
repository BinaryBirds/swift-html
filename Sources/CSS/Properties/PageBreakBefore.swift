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

public struct PageBreakBefore: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "page-break-before" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PageBreakBefore {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PageBreakBefore {

    /// Sets the page-break behavior before an element
    public init(_ value: PageBreakBeforeValue = .auto) {
        self.init(value.rawValue)
    }
}
