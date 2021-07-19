//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public struct Comment: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ value: String?) {
        node = .init(type: .comment, name: "", contents: value, attributes: [], children: [])
    }
}

