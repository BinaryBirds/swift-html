//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol ShortAttributedElement: ShortElement & Attributed {}


extension ShortAttributedElement {

    public var node: Node {
        .short(.init(name: name, attributes: attributes))
    }
}
