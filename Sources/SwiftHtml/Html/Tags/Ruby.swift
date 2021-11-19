//
//  Ruby.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func ruby(_ contents: String) -> Node {
        Node(type: .standard, name: "ruby", contents: contents)
    }
}

/// The `<ruby>` tag specifies a ruby annotation.
///
/// A ruby annotation is a small extra text, attached to the main text to indicate the pronunciation or meaning of the corresponding characters. This kind of annotation is often used in Japanese publications.
///
/// Use `<ruby>` together with `<rt>` and `<rp>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that do not support ruby annotations.
public struct Ruby: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .ruby(contents)
    }

}
