//
//  EmptyTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: Tag {
    
    static var type: Node.NodeType { .empty }
    
    public class func defaultNode(_ `class`: AnyClass) -> Node {
        .init(type: Self.type, name: Self.name(`class`))
    }
    
    override public init(node: Node? = nil, _ children: [Tag] = []) {
        let node = node ?? .init(type: Self.type)
        super.init(node: node, children)
    }
    
    public convenience init(node: Node? = nil, @TagBuilder _ builder: () -> Tag) {
        let node: Node = node ?? .init(type: Self.type)
        self.init(node: node, [builder()])
    }
}
