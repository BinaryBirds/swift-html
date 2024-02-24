//
//  Text.swift
//
//
//  Created by Aaron Ge on 2022/4/8.
//

/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/Text
open class Text: Tag {

}

extension Text {
    ///    The x coordinate of the starting point of the text baseline.
    public func x(_ value: Double = 0) -> Self {
        attribute("x", value.preciseString)
    }

    ///    The y coordinate of the starting point of the text baseline.
    public func y(_ value: Double = 0) -> Self {
        attribute("y", value.preciseString)
    }

}
