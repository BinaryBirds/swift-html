//
//  Rp.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<rp>` tag can be used to provide parentheses around a ruby text, to be shown by browsers that do not support ruby annotations.
///
/// Use `<rp>` together with `<ruby>` and `<rt>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that not support ruby annotations.
public final class Rp: Tag {
        
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "rp", contents: contents))
    }

}
