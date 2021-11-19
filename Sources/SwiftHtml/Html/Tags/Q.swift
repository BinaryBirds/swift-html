//
//  Q.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<q>` tag defines a short quotation.
///
/// Browsers normally insert quotation marks around the quotation.
///
/// **Tip:** Use `<blockquote>` for long quotations.
public final class Q: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "q", contents: contents))
    }
}

public extension Q {
    /// Specifies the source URL of the quote
    func cite(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "cite", value: value))
        return self
    }
}
