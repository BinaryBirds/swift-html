//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func base() -> Node {
        Node(type: .empty, name: "base")
    }
}

/// The <base> tag specifies the base URL and/or target for all relative URLs in a document.
///
/// The <base> tag must have either an href or a target attribute present, or both.
///
/// There can only be one single <base> element in a document, and it must be inside the <head> element.
public struct Base: Tag {

    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .base()
    }
    
    /// Specifies the base URL for all relative URLs in the page
    public func href(_ url: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "href", value: url)))
    }
    
    /// Specifies the default target for all hyperlinks and forms in the page
    public func target(_ value: Target) -> Self {
        .init(node.addOrReplace(Attribute(key: "target", value: value.rawValue)))
    }
}
