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

public struct PageBreakInside: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "page-break-inside" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> PageBreakInside {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension PageBreakInside {

    /// Sets the page-break behavior inside an element
    public init(_ value: PageBreakInsideValue = .auto) {
        self.init(value.rawValue)
    }
}
