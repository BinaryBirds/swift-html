//
//  BoxSizing.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BoxSizingValue: String {
    /// Default. The width and height properties (and min/max properties) includes only the content. Border and padding are not included
    case contentBox = "content-box"
    /// The width and height properties (and min/max properties) includes content, padding and border
    case borderBox = "border-box"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct BoxSizing: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "box-sizing" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BoxSizing {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BoxSizing {

    /// Defines how the width and height of an element are calculated: should they include padding and borders, or not
    public init(_ value: BoxSizingValue = .contentBox) {
        self.init(value.rawValue)
    }
}
