//
//  Dt.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func dt(_ contents: String) -> Node {
        Node(type: .standard, name: "dt", contents: contents)
    }
}

/// The `<dt>` tag defines a term/name in a description list.
/// 
/// The `<dt>` tag is used in conjunction with `<dl>` (defines a description list) and `<dd>` (describes each term/name).
public struct Dt: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .dt(contents)
    }
}
