//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol StandardAttributedElement: StandardElement & Attributed {
    
}

extension StandardAttributedElement {
    
    public var node: Node {
        .standard(.init(name: name, attributes: attributes), children.map { $0.node })
    }
}
