//
//  Ol.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<ol>` tag defines an ordered list. An ordered list can be numerical or alphabetical.
///
/// The `<li>` tag is used to define each list item.
///
/// **Tip:** Use CSS to style lists.
///
/// **Tip:** For unordered list, use the `<ul>` tag.
open class Ol: Tag {

}

extension Ol {

    public enum `Type`: String {
        /// Default. Decimal numbers (1, 2, 3, 4)
        case `default` = "1"
        /// Alphabetically ordered list, lowercase (a, b, c, d)
        case lowerAlpa = "a"
        /// Alphabetically ordered list, uppercase (A, B, C, D)
        case upperAlpha = "A"
        /// Roman numbers, lowercase (i, ii, iii, iv)
        case lowerRoman = "i"
        /// Roman numbers, uppercase (I, II, III, IV)
        case upperRoman = "I"
    }

    /// Specifies that the list order should be reversed (9,8,7...)
    public func reversed(_ value: Double) -> Self {
        attribute("reversed", String(value))
    }

    /// Specifies the start value of an ordered list
    public func start(_ value: Int) -> Self {
        attribute("start", String(value))
    }

    /// Specifies the kind of marker to use in the list
    public func type(_ value: `Type`) -> Self {
        attribute("type", value.rawValue)
    }
}
