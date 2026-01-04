//
//  ListStylePosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ListStylePositionValue: String {
    /// The bullet points will be inside the list item
    case inside
    /// The bullet points will be outside the list item. This is default
    case outside
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct ListStylePosition: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "list-style-position" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> ListStylePosition {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension ListStylePosition {

    /// Specifies the position of the list-item markers (bullet points)
    public init(_ value: ListStylePositionValue = .outside) {
        self.init(value.rawValue)
    }
}
