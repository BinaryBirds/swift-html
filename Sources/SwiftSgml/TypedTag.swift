//
//  TypedTag.swift
//  
//
//  Created by Brad Gourley on 7/10/23.
//

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
                _ children: [Tag] = []) {
        let node = Self.node(name: name ?? Self.name, contents: contents, attributes: attributes)
        super.init(node: node, children)
    }
    
    public convenience init(name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute] = [],
                            _ child: Tag) {
        self.init(name: name, contents: contents, attributes: attributes, [child])
    }
    
    public convenience init(name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute] = [],
                            @TagBuilder _ builder: () -> Tag) {
        self.init(name: name, contents: contents, attributes: attributes, [builder()])
    }
    
    public convenience init(name: String? = nil,
                            attributes: [Attribute] = [],
                            _ contents: String?) {
        
        self.init(name: name, contents: contents, attributes: attributes)
    }
}

public extension String {
    
    /// convert class names into node names
    init(_ `class`: AnyClass) {
        self.init(stringLiteral: .init(describing: `class`.self).lowercased())
    }
}
