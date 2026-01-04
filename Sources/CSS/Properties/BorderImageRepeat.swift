//
//  BorderImageRepeat.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderImageRepeatValue: String {
    /// Default value. The image is stretched to fill the area    Play it »
    case stretch
    /// The image is tiled (repeated) to fill the area    Play it »
    case `repeat`
    /// The image is tiled (repeated) to fill the area. If it does not fill the area with a whole number of tiles, the image is rescaled so it fits    Play it »
    case round
    /// The image is tiled (repeated) to fill the area. If it does not fill the area with a whole number of tiles, the extra space is distributed around the tiles
    case space
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public struct BorderImageRepeat: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "border-image-repeat" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> BorderImageRepeat {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension BorderImageRepeat {

    /// Specifies whether the border image should be repeated, rounded or stretched
    public init(_ value: BorderImageRepeatValue = .stretch) {
        self.init(value.rawValue)
    }
}
