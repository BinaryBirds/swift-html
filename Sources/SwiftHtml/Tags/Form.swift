//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func form(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "form", children: children)
    }
}

public struct Form: Tag {
    
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .form(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
    
    /// Specifies where to send the form-data when a form is submitted
    public func action(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "action", value: value)))
    }
    
    /// Specifies the HTTP method to use when sending form-data
    public func method(_ value: Method) -> Self {
        .init(node.addOrReplace(Attribute(key: "method", value: value.rawValue)))
    }
    
    /// Specifies how the form-data should be encoded when submitting it to the server (only for method="post")
    public func enctype(_ value: Enctype) -> Self {
        .init(node.addOrReplace(Attribute(key: "enctype", value: value.rawValue)))
    }
    
}
