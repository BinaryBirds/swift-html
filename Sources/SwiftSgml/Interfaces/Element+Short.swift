//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

public protocol ShortElement: Element {}

extension ShortElement {

    public var node: Node {
        .short(.init(name: name))
    }
}
