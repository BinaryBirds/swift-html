//
//  Bdi.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func bdi(_ contents: String) -> Node {
        Node(type: .standard, name: "bdi", contents: contents)
    }
}

/// BDI stands for Bi-Directional Isolation.
///
/// The `<bdi>` tag isolates a part of text that might be formatted in a different direction from other text outside it.
///
/// This element is useful when embedding user-generated content with an unknown text direction.
public struct Bdi: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .bdi(contents)
    }
}
