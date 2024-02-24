//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public struct Title: StandardElement {
    
    public let children: [Element]

    public init(_ value: String) {
        self.children = [Text(value)]
    }
}
