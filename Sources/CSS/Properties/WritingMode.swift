//
//  WritingMode.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WritingModeValue: String {
    /// Let the content flow horizontally from left to right, vertically from top to bottom
    case horizontalTb = "horizontal-tb"
    /// Let the content flow vertically from top to bottom, horizontally from right to left
    case verticalRl = "vertical-rl"
    /// Let the content flow vertically from top to bottom, horizontally from left to right
    case verticalLr = "vertical-lr"
}

public func WritingMode(_ value: String) -> Property {
    Property(name: "writing-mode", value: value)
}

/// Specifies whether lines of text are laid out horizontally or vertically
public func WritingMode(_ value: WritingModeValue = .horizontalTb) -> Property {
    WritingMode(value.rawValue)
}
