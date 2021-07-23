//
//  Address.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func address(_ contents: String) -> Node {
        Node(type: .standard, name: "address", contents: contents)
    }
}

/// The `<address>` tag defines the contact information for the author/owner of a document or an article.
///
/// The contact information can be an email address, URL, physical address, phone number, social media handle, etc.
///
/// The text in the `<address>` element usually renders in italic, and browsers will always add a line break before and after the `<address>` element.
public struct Address: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .address(contents)
    }
}
