//
//  EmptyTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: Tag {
    
    static var type: Node.NodeType { .empty }

    public init(name: String? = nil,
                contents: String? = nil,
                attributes: [Attribute] = []) {
        let node = Node(type: Self.type,
                        name: name,
                        contents: contents,
                        attributes: attributes)
        super.init(node: node, [])
    }    
}
