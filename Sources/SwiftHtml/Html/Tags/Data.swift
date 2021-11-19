//
//  Data.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<data>` tag is used to add a machine-readable translation of a given content.
///
/// This element provides both a machine-readable value for data processors, and a human-readable value for rendering in a browser.
///
/// **Tip:** If the content is time- or date-related, use the `<time>` element instead.
public final class Data: Tag {
    
    init(_ node: Node) {
        super.init(node)
    }
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "data", contents: contents))
    }
}

public extension Data {
    /// Specifies the machine-readable translation of the content of the element
    func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
