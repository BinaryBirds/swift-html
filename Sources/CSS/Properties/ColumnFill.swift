//
//  ColumnFill.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnFillValue: String {
    /// Default value. Fills each column with about the same amount of content, but will not allow the columns to be taller than the height
    /// (so, columns might be shorter than the height as the browser distributes the content evenly horizontally)
    case balance
    /// Fills each column until it reaches the height, and do this until it runs out of content
    /// (so, this value will not necessarily fill all the columns nor fill them evenly)
    case auto
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct ColumnFill: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "column-fill" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ColumnFill {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ColumnFill {

    /// Specifies how to fill columns, balanced or not
    public init(_ value: ColumnFillValue = .balance) {
        self.init(value.rawValue)
    }
}
