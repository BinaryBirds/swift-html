//
//  File.swift
//  
//
//  Created by Brad Gourley on 7/9/23.
//

open class StandardTag: Tag {
    
    open class var `class`: AnyClass { StandardTag.self }
    
    public init(_ children: [Tag] = []) {
        super.init(node: .init(Self.`class`), children)
    }
    
    public convenience init(@TagBuilder _ builder: () -> Tag) {
        self.init([builder()])
    }
    
    public convenience init(_ contents: String) {
        self.init()
        setContents(contents)
    }
}
