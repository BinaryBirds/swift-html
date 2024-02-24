//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

extension StandardElement where Self: Attributed {
    
    public var node: Node {
        .standard(.init(name: name, attributes: attributes), children.map { $0.node })
    }
}
