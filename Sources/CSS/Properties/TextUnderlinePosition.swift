//
//  TextUnderlinePosition.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TextUnderlinePositionValue: String {
    case auto
    case under
    case left
    case right
    case underLeft = "under left"
    case rightUnder = "right under"
    case inherit
    case initial
    case revert
    case unset
}

public func TextUnderlinePosition(_ value: String) -> Property {
    Property(name: "text-underline-position", value: value)
}

/// Specifies the position of the underline which is set using the text-decoration property
public func TextUnderlinePosition(_ value: TextUnderlinePositionValue)
    -> Property
{
    TextUnderlinePosition(value.rawValue)
}
