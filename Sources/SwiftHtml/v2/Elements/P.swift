//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct P: StandardAttributedElement {

    public let children: [Element]
    public var attributes: [Attribute]
    
    public init(
        @Builder<Element> _ elementBuilder: () -> [Element],
        @Builder<Attribute> attributes attributeBuilder: () -> [Attribute] = { [] }
    ) {
        self.children = elementBuilder()
        self.attributes = attributeBuilder()
    }
    
    public init(
        _ value: String,
        @Builder<Attribute> attributes attributeBuilder: () -> [Attribute] = { [] }
    ) {
        self.children = [
            Text(value)
        ]
        self.attributes = []
    }

    
}
