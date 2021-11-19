//
//  Base.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<base>` tag specifies the base URL and/or target for all relative URLs in a document.
///
/// The `<base>` tag must have either an href or a target attribute present, or both.
///
/// There can only be one single `<base>` element in a document, and it must be inside the `<head>` element.
public final class Base: Tag {

    public init() {
        super.init(Node(type: .empty, name: "base"))
    }
}

public extension Base {
    /// Specifies the base URL for all relative URLs in the page
    func href(_ url: String) -> Self {
        node.addOrReplace(Attribute(key: "href", value: url))
        return self
    }

    /// Specifies the default target for all hyperlinks and forms in the page
    func target(_ value: Target) -> Self {
        node.addOrReplace(Attribute(key: "target", value: value.rawValue))
        return self
    }
}
