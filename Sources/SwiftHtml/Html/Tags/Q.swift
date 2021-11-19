//
//  Q.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func q(_ contents: String) -> Node {
        Node(type: .standard, name: "q", contents: contents)
    }
}

/// The `<q>` tag defines a short quotation.
///
/// Browsers normally insert quotation marks around the quotation.
///
/// **Tip:** Use `<blockquote>` for long quotations.
public struct Q: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .q(contents)
    }
}

public extension Q {
    /// Specifies the source URL of the quote
    func cite(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "cite", value: value)))
    }
}
