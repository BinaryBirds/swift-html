//
//  BreakInside.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BreakInsideValue: String {
    /// Default. Automatic page/column/region break inside the element
    case auto
    /// Avoid a page/column/region break inside the element
    case avoid
    /// Avoid a column-break inside the element
    case avoidColumn = "avoid-column"
    /// Avoid a page-break inside the element
    case avoidPage = "avoid-page"
    /// Avoid a region-break inside the element
    case avoidRegion = "avoid-region"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct BreakInside: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "break-inside" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BreakInside {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BreakInside {

    /// Specifies whether or not a page-, column-, or region-break should occur inside the specified element
    public init(_ value: BreakInsideValue = .auto) {
        self.init(value.rawValue)
    }
}
