//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func label(_ contents: String) -> Node {
        Node(type: .standard, name: "label", contents: contents)
    }
}

public struct Label: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .label(contents)
    }
    
    /// Specifies the id of the form element the label should be bound to
    public func `for`(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "for", value: value)))
    }
    
    /// Specifies which form the label belongs to
    public func form(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "form", value: value)))
    }
}
