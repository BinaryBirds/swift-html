//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func data(_ contents: String) -> Node {
        Node(type: .standard, name: "data", contents: contents)
    }
}

/// The <data> tag is used to add a machine-readable translation of a given content.
///
/// This element provides both a machine-readable value for data processors, and a human-readable value for rendering in a browser.
///
/// Tip: If the content is time- or date-related, use the <time> element instead.
public struct Data: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .data(contents)
    }
    
    /// Specifies the machine-readable translation of the content of the element
    public func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
