//
//  TypedTag.swift
//  
//
//  Created by Brad Gourley on 7/10/23.
//

//  Base class for all tags with a particular node type.
//
//  In most cases, it is more appropriate to subclass the parent class Tag
//
//  or one of the superclasses: StandardTag, GroupTag, EmptyTag, CommentTag.
//
//  Subclasses only need to override the 'type' var


open class TypedTag: Tag {
    
    open class var type: Node.NodeType { .standard }
    
    private class func node(name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute] = []) -> Node {
        Node(type: Self.type, name: name ?? Self.name, contents: contents, attributes: attributes)
    }
    
    public init(name: String? = nil,
                contents: String? = nil,
                attributes: [Attribute] = [],
                _ children: [TagRepresentable] = []) {
        let node = Self.node(name: name ?? Self.name, contents: contents, attributes: attributes)
        super.init(node: node, children)
    }
    
    public convenience init(name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute] = [],
                            _ child: TagRepresentable) {
        self.init(name: name, contents: contents, attributes: attributes, [child])
    }
    
    public convenience init(name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute] = [],
                            @TagBuilder _ builder: () -> TagRepresentable) {
        self.init(name: name, contents: contents, attributes: attributes, [builder()])
    }
    
    public convenience init(name: String? = nil,
                            attributes: [Attribute] = [],
                            _ contents: String?) {
        
        self.init(name: name, contents: contents, attributes: attributes)
    }
}
