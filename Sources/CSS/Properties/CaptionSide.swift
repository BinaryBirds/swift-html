//
//  CaptionSide.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum CaptionSideValue: String {
    /// Puts the caption above the table. This is default
    case top
    /// Puts the caption below the table
    case bottom
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct CaptionSide: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "caption-side" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> CaptionSide {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension CaptionSide {

    /// Specifies the placement of a table caption
    public init(_ value: CaptionSideValue) {
        self.init(value.rawValue)
    }
}
