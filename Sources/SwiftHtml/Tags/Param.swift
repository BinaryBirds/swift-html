//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func param() -> Node {
        Node(type: .empty, name: "param")
    }
}

/// The <param> tag is used to define parameters for an <object> element.
public struct Param: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .param()
    }
        
    /// Specifies the name of a parameter
    public func name(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "name", value: value)))
    }
    
    /// Specifies the value of the parameter
    public func value(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "value", value: value)))
    }
}
