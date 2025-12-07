//
//  Mask.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

// @TODO: add proper mask support
// https://developer.mozilla.org/en-US/docs/Web/CSS/mask
/// Hides an element by masking or clipping the image at specific places
public func Mask(_ value: String) -> Property {
    Property(name: "mask", value: value)
}
