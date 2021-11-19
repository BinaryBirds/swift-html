//
//  Var.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func `var`(_ contents: String) -> Node {
        Node(type: .standard, name: "var", contents: contents)
    }
}

/// The `<var>` tag is used to defines a variable in programming or in a mathematical expression. The content inside is typically displayed in italic.
/// 
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS.
public struct Var: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .var(contents)
    }
}
