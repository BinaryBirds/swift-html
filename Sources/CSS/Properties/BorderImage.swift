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

public struct BorderImage: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-image" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderImage {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderImage {

    /// A shorthand property for all the border-image-* properties
    public init(_ value: BorderImageValue) {
        self.init(value.rawValue)
    }

    /// A shorthand property for all the border-image-* properties
    public init(
        _ source: BorderImageSourceValue,
        slice: BorderImageSliceValue? = nil,
        width: BorderImageWidthValue? = nil,
        outset: BorderImageOutsetValue? = nil,
        `repeat`: BorderImageRepeatValue? = nil
    ) {
        self.init(.values(source, slice, width, outset, `repeat`))
    }
}
