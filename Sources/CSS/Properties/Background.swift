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

public struct Background: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "background" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Background {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Background {

    /// A shorthand property for all the background-* properties
    public init(_ value: BackgroundValue) {
        self.init(value.rawValue)
    }

    /// A shorthand property for all the background-* properties
    public init(
        _ color: CSSColorValue? = nil,
        image: BackgroundImageValue? = nil,
        position: BackgroundPositionValue? = nil,
        size: BackgroundSizeValue? = nil,
        `repeat`: BackgroundRepeatValue? = nil,
        origin: BackgroundOriginValue? = nil,
        clip: BackgroundClipValue? = nil,
        attachment: BackgroundAttachmentValue? = nil
    ) {
        self.init(
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
}
