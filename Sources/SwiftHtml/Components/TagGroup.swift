//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 11. 19..
//

open class Tag: TagRepresentable {

    public var node: Node
    public var tags: [Tag]

    internal init(_ node: Node, tags: [Tag] = []) {
        self.node = node
        self.tags = tags
    }

}
