//
//  GroupTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//


open class GroupTag: Tag {
    
    static var type: Node.NodeType { .group }
    
    public init(name: String? = nil,
                contents: String? = nil,
                attributes: [Attribute] = [],
                @TagBuilder _ builder: () -> Tag) {
        let node = Node(type: Self.type,
                        name: name,
                        contents: contents,
                        attributes: attributes)
        super.init(node: node, [builder()])
    }
}
