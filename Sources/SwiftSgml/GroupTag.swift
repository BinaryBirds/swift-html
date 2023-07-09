//
//  GroupTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//


open class GroupTag: Tag {
    
    static var node: Node { .init(type: .group) }

    public init(_ children: [Tag] = []) {
        super.init(node: Self.node, children)
    }
    
    public init(@TagBuilder _ builder: () -> Tag) {
        super.init(node: Self.node, [builder()])
    }
    
    public convenience init(_ child: Tag) {
        self.init([child])
    }
    
    public convenience init(_ contents: String?) {
        self.init()
        setContents(contents)
    }
}
