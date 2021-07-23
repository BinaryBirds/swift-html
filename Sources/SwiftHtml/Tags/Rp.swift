//
//  Rp.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func rp(_ contents: String) -> Node {
        Node(type: .standard, name: "rp", contents: contents)
    }
}

/// The `<rp>` tag can be used to provide parentheses around a ruby text, to be shown by browsers that do not support ruby annotations.
///
/// Use `<rp>` together with `<ruby>` and `<rt>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that not support ruby annotations.
public struct Rp: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .rp(contents)
    }

}
