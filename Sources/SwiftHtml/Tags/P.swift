//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public struct P: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ value: String?) {
        self.init(.init(type: .standard, name: "p", contents: value, attributes: [], children: []))
    }
}

