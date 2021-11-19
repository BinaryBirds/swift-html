//
//  Del.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<del>` tag defines text that has been deleted from a document.
///
/// Browsers will usually strike a line through deleted text.
public final class Del: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "del", contents: contents))
    }
}

public extension Del {
    /// Specifies a URL to a document that explains the reason why the text was deleted/changed
    func cite(_ value: String) -> Self {
        node.upsert(Attribute(key: "cite", value: value))
        return self
    }
    
    /// Specifies the date and time of when the text was deleted/changed
    ///
    /// Format: `YYYY-MM-DDThh:mm:ssTZD`
    func datetime(_ value: String) -> Self {
        node.upsert(Attribute(key: "datetime", value: value))
        return self
    }
}
