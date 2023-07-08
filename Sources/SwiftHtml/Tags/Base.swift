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
open class Base: EmptyTag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}

public extension Base {
    /// Specifies the base URL for all relative URLs in the page
    func href(_ value: String) -> Self {
        attribute("href", value)
    }

    /// Specifies the default target for all hyperlinks and forms in the page
    func target(_ value: Target) -> Self {
        attribute("target", value.rawValue)
    }
}
