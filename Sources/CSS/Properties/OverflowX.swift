//
//  OverflowX.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func OverflowX(_ value: String) -> Property {
    Property(name: "overflow-x", value: value)
}

/// Specifies whether or not to clip the left/right edges of the content, if it overflows the element's content area
public func OverflowX(_ value: OverflowValue = .visible) -> Property {
    OverflowX(value.rawValue)
}
