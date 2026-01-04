//
//  ColumnSpan.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnSpanValue: String {
    /// Default value. The element should span across one column
    case none
    /// The element should span across all columns
    case all
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct ColumnSpan: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "column-span" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ColumnSpan {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ColumnSpan {

    /// Specifies how many columns an element should span across
    public init(_ value: ColumnSpanValue = .none) {
        self.init(value.rawValue)
    }
}
