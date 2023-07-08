//
//  Ruby.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<ruby>` tag specifies a ruby annotation.
///
/// A ruby annotation is a small extra text, attached to the main text to indicate the pronunciation or meaning of the corresponding characters. This kind of annotation is often used in Japanese publications.
///
/// Use `<ruby>` together with `<rt>` and `<rp>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that do not support ruby annotations.
open class Ruby: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
