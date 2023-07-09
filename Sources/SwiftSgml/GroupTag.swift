//
//  GroupTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//


open class GroupTag: Tag {
    
    static var type: Node.NodeType { .group }
    
    public class func defaultNode(_ `class`: AnyClass) -> Node {
        .init(type: Self.type, name: Self.name(`class`))
    }
        
    override public init(node: Node? = nil, _ children: [Tag] = []) {
        let node: Node = node ?? .init(type: Self.type)
        super.init(node: node, children)
    }
}
