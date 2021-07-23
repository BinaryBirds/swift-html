//
//  Del.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func del(_ contents: String) -> Node {
        Node(type: .standard, name: "del", contents: contents)
    }
}

/// The `<del>` tag defines text that has been deleted from a document.
///
/// Browsers will usually strike a line through deleted text.
public struct Del: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .del(contents)
    }
}

public extension Del {
    /// Specifies a URL to a document that explains the reason why the text was deleted/changed
    func cite(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "cite", value: value)))
    }
    
    /// Specifies the date and time of when the text was deleted/changed
    ///
    /// Format: `YYYY-MM-DDThh:mm:ssTZD`
    func datetime(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "datetime", value: value)))
    }
}
