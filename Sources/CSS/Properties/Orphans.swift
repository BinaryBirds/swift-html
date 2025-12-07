//
//  Orphans.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

// @TODO: add orphans support
// https://developer.mozilla.org/en-US/docs/Web/CSS/orphans
/// Sets the minimum number of lines that must be left at the bottom of a page when a page break occurs inside an element
public func Orphans(_ value: String) -> Property {
    Property(name: "orphans", value: value)
}
