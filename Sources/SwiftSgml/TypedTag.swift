//
//  TypedTag.swift
//  
//
//  Created by Brad Gourley on 7/12/23.
//

open class TypedTag: Tag {
    
    public init(name: String? = nil,
                contents: String? = nil,
                attributes: [Attribute]? = nil,
                @TagBuilder _ builder: () -> Tag) {
        super.init(name: name,
                   contents: contents,
                   attributes: attributes,
                   [builder()])
    }
        
    public convenience init(_ contents: String) {
        self.init(contents: contents) {}
    }
}

