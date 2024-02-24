//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct ShortNode: Sendable {
    let name: String
    let attributes: [Attribute]
    
    public init(
        name: String,
        attributes: [Attribute] = []
    ) {
        self.name = name
        self.attributes = attributes
    }
}
