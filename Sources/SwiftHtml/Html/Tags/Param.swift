//
//  Param.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<param>` tag is used to define parameters for an `<object>` element.
public final class Param: Tag {


    init(_ node: Node) {
        super.init(node)
    }
    
    public init() {
        super.init(Node(type: .empty, name: "param"))
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
