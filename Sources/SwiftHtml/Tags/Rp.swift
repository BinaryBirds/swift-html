//
//  Rp.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<rp>` tag can be used to provide parentheses around a ruby text, to be shown by browsers that do not support ruby annotations.
///
/// Use `<rp>` together with `<ruby>` and `<rt>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that not support ruby annotations.
open class Rp: Tag {
    
    open class override var name: String? { "rp" }
}
