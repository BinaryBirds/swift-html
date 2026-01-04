//
//  AlignItems.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum AlignItemsValue: String {
    /// Default. Items are stretched to fit the container
    case stretch
    /// Items are positioned at the center of the container
    case center
    /// Items are positioned at the beginning of the container
    case flexStart = "flex-start"
    /// Items are positioned at the end of the container
    case flexEnd = "flex-end"
    /// Items are positioned at the baseline of the container
    case baseline
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct AlignItems: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "align-items" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> AlignItems {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension AlignItems {

    /// Specifies the alignment for items inside a flexible container
    public init(_ value: AlignItemsValue = .stretch) {
        self.init(value.rawValue)
    }
}
