//
//  Rt.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<rt>` tag defines an explanation or pronunciation of characters (for East Asian typography) in a ruby annotation.
///
/// Use `<rt>` together with `<ruby>` and `<rp>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that not support ruby annotations.
open class Rt: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
