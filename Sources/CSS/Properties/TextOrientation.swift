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

public func TextOrientation(_ value: String) -> Property {
    Property(name: "text-orientation", value: value)
}

public func TextOrientation(_ value: TextOrientationValue) -> Property {
    TextOrientation(value.rawValue)
}
