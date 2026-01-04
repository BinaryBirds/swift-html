//
//  JustifyContent.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum JustifyContentValue: String {
    /// Default value. Items are positioned at the beginning of the container
    case flexStart = "flex-start"
    /// Items are positioned at the end of the container
    case flexEnd = "flex-end"
    /// Items are positioned in the center of the container
    case center
    /// Items will have space between them
    case spaceBetween = "space-between"
    /// Items will have space before, between, and after them
    case spaceAround = "space-around"
    /// Items will have equal space around them
    case spaceEvenly = "space-evenly"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct JustifyContent: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "justify-content" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> JustifyContent {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension JustifyContent {

    /// Specifies the alignment between the items inside a flexible container when the items do not use all available space
    public init(_ value: JustifyContentValue = .flexStart) {
        self.init(value.rawValue)
    }
}
