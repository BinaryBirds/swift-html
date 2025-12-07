//
//  BorderImage.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderImageValue {

    case values(
        BorderImageSourceValue,
        BorderImageSliceValue?,
        BorderImageWidthValue?,
        BorderImageOutsetValue?,
        BorderImageRepeatValue?
    )

    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .values(let source, let slice, let width, let outset, let `repeat`):
            return [
                source.rawValue,
                slice?.rawValue,
                width?.rawValue,
                outset?.rawValue,
                `repeat`?.rawValue,
            ]
            .compactMap { $0 }.joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func BorderImage(_ value: String) -> Property {
    Property(name: "border-image", value: value)
}

/// A shorthand property for all the border-image-* properties
public func BorderImage(_ value: BorderImageValue) -> Property {
    BorderImage(value.rawValue)
}

/// A shorthand property for all the border-image-* properties
public func BorderImage(
    _ source: BorderImageSourceValue,
    slice: BorderImageSliceValue? = nil,
    width: BorderImageWidthValue? = nil,
    outset: BorderImageOutsetValue? = nil,
    `repeat`: BorderImageRepeatValue? = nil
) -> Property {
    BorderImage(.values(source, slice, width, outset, `repeat`))
}
