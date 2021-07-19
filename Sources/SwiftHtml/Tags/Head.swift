//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public struct Head: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(attributes: [Attribute] = [], @TagBuilder _ builder: () -> [Tag]) {
        let children = builder().map(\.node)
        node = .init(type: .standard, name: "head", attributes: attributes, children: children)
    }
}

