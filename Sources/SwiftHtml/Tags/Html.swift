//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func html(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "html", children: children)
    }
}

/// The <html> tag represents the root of an HTML document.
///
/// The <html> tag is the container for all other HTML elements (except for the <!DOCTYPE> tag).
///
/// Note: You should always include the lang attribute inside the <html> tag, to declare the language of the Web page. This is meant to assist search engines and browsers.
public struct Html: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .html(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
    
    /// Specifies the XML namespace attribute (If you need your content to conform to XHTML)
    public func xmlns() -> Self {
        .init(node.addOrReplace(Attribute(key: "xmlns", value: "http://www.w3.org/1999/xhtml")))
    }
}
