//
//  EmptyTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: Tag {
    
    open class func node(_ name: String) -> Node {
        .init(type: .empty, name: name)
    }
    
    public init(name: String, _ children: [Tag] = []) {
        super.init(node: Self.node(name), children)
    }
    
    public init(name: String, @TagBuilder _ builder: () -> Tag) {
        super.init(node:Self.node(name), [builder()])
    }
    
    public convenience init(name: String, _ child: Tag) {
        self.init(name: name, [child])
    }
    
    public convenience init(name: String, _ contents: String?) {
        self.init(name: name)
        setContents(contents)
    }
}

extension String {
    
    public init(_ `class`: AnyClass) {
        self.init(describing: `class`.self)
        _ = lowercased()
    }
}
