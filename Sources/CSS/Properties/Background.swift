//
//  Background.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BackgroundValue {

    case values(
        CSSColorValue?,
        BackgroundImageValue?,
        BackgroundPositionValue?,
        BackgroundSizeValue?,
        BackgroundRepeatValue?,
        BackgroundOriginValue?,
        BackgroundClipValue?,
        BackgroundAttachmentValue?
    )
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .values(
            let color,
            let image,
            let position,
            let size,
            let `repeat`,
            let origin,
            let clip,
            let attachment
        ):
            return [
                color?.rawValue,
                image?.rawValue,
                position?.rawValue,
                size?.rawValue,
                `repeat`?.rawValue,
                origin?.rawValue,
                clip?.rawValue,
                attachment?.rawValue,
            ]
            .compactMap { $0 }.joined(separator: " ")
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Background(_ value: String) -> Property {
    Property(name: "background", value: value)
}

/// A shorthand property for all the background-* properties
public func Background(_ value: BackgroundValue) -> Property {
    Background(value.rawValue)
}

/// A shorthand property for all the background-* properties
public func Background(
    _ color: CSSColorValue? = nil,
    image: BackgroundImageValue? = nil,
    position: BackgroundPositionValue? = nil,
    size: BackgroundSizeValue? = nil,
    `repeat`: BackgroundRepeatValue? = nil,
    origin: BackgroundOriginValue? = nil,
    clip: BackgroundClipValue? = nil,
    attachment: BackgroundAttachmentValue? = nil
) -> Property {
    Background(
        .values(
            color,
            image,
            position,
            size,
            `repeat`,
            origin,
            clip,
            attachment
        )
    )
}
