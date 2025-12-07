//
//  MaskType.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

// @TODO: add mask support
// https://developer.mozilla.org/en-US/docs/Web/CSS/mask-type
/// Specifies whether a mask element is used as a luminance or an alpha mask
public func MaskType(_ value: String) -> Property {
    Property(name: "mask-type", value: value)
}
