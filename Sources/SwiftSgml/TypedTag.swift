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
                _ children: [Tag]? = nil) {
        super.init(name: name,
                   contents: contents,
                   attributes: attributes,
                   children)
    }
    
    // alternate designated initializer with builder parameter for convenient subclassing
    public init(name: String? = nil,
                contents: String? = nil,
                attributes: [Attribute]? = nil,
                @TagBuilder _ builder: () -> Tag) {
        super.init(name: name,
                  contents: contents,
                  attributes: attributes,
                  [builder()])
    }
    
    public convenience init(name: String? = nil,
                            contents: String? = nil,
                            attributes: [Attribute]? = nil,
                            _ child: Tag) {
        self.init(name: name,
                  contents: contents,
                  attributes: attributes,
                  [child])
    }
    
    public convenience init(_ contents: String) {
        self.init(contents: contents)
    }
}

