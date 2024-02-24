//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct StandardNode {
    let name: String
    let attributes: [any Attribute]
    
    public init(
        name: String,
        attributes: [any Attribute] = []
    ) {
        self.name = name
        self.attributes = attributes
    }
}
