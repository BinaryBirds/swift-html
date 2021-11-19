//
//  Param.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func param() -> Node {
        Node(type: .empty, name: "param")
    }
}

/// The `<param>` tag is used to define parameters for an `<object>` element.
public struct Param: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .param()
    }
}

public extension Param {
    /// Specifies the name of a parameter
    func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
    
    /// Specifies the value of the parameter
    func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
