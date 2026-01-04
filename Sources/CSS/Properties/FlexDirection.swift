//
//  FlexDirection.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexDirectionValue: String {
    /// Default value. The flexible items are displayed horizontally, as a row
    case row
    /// Same as row, but in reverse order
    case rowReverse = "row-reverse"
    /// The flexible items are displayed vertically, as a column
    case column
    /// Same as column, but in reverse order
    case columnReverse = "column-reverse"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct FlexDirection: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "flex-direction" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FlexDirection {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FlexDirection {

    /// Specifies the direction of the flexible items
    public init(_ value: FlexDirectionValue = .row) {
        self.init(value.rawValue)
    }
}
