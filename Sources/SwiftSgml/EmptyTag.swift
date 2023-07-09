//
//  EmptyTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: Tag {
    
    static var type: Node.NodeType { .empty }
    
    public class func defaultNode(name: String,
                                  contents: String? = nil,
                                  attributes: [Attribute] = []) -> Node {
        .init(type: Self.type, name: name, contents: contents, attributes: attributes)
    }
    
    override public init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: node ?? .init(type: Self.type, name: Self.name), children)
    }
}
