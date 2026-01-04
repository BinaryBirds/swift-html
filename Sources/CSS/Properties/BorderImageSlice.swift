//
//  BorderImageSlice.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderImageSliceValue {
    /// The number(s) represent pixels for raster images or coordinates for vector images
    case number(Unit)
    /// Causes the middle part of the image to be displayed
    case fill
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .number(let value):
            return value.rawValue
        case .fill:
            return "fill"
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public struct BorderImageSlice: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-image-slice" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderImageSlice {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderImageSlice {

    /// Specifies how to slice the border image
    public init(_ value: BorderImageSliceValue) {
        self.init(value.rawValue)
    }
}
