//
//  Blockquote.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<blockquote>` tag specifies a section that is quoted from another source.
/// 
/// Browsers usually indent `<blockquote>` elements (look at example below to see how to remove the indentation).
public final class Blockquote: Tag {

    init(_ node: Node) {
        super.init(node)
    }
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "blockquote", contents: contents))
    }
}

public extension Blockquote {
    /// Specifies the source of the quotation
    func cite(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "cite", value: value)))
    }
}
