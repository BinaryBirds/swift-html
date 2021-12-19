//
//  Tag.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

open class Tag {

    public var node: Node
    public var children: [Tag]

    public init(_ node: Node, children: [Tag] = []) {
        self.node = node
        self.children = children
    }

}
