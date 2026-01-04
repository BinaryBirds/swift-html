//
//  TextOrientation.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextOrientationValue: String {
    case mixed
    case upright
    case sidewaysRight = "sideways-right"
    case sideways
    case useGlyphOrientation = "use-glyph-orientation"
    case inherit
    case initial
    case unset
}

public struct TextOrientation: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "text-orientation" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> TextOrientation {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension TextOrientation {

    public init(_ value: TextOrientationValue) {
        self.init(value.rawValue)
    }
}
