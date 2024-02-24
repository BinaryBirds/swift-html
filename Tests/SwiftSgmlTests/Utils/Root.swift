//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml

protocol RootChildElement: Element {}

extension Branch: RootChildElement {}

protocol RootAttribute: Attribute {}

extension Custom: RootAttribute {}

struct Root: Element, Mutable {
    
    var children: [any RootChildElement]
    var attributes: [any RootAttribute]
    
    var node: Node {
        .standard(.init(name: name, attributes: attributes), children.compactMap { $0.node })
    }
    
    init(
        @Builder<RootAttribute> attributes b2: () -> [RootAttribute] = { [] },
        @Builder<RootChildElement> elements b1: () -> [RootChildElement] = { [] }
    ) {
        self.children = b1()
        self.attributes = b2()
    }
    
    init(
        @Builder<RootChildElement> _ b1: () -> [RootChildElement] = { [] }
    ) {
        self.init(attributes: { }, elements: b1)
    }

    // MARK: -

    func add(child: RootChildElement) -> Self {
        mutate { $0.children.append(child) }
    }

    func removeChildren() -> Self {
        mutate { $0.children.removeAll() }
    }
    
    // MARK: -

    func add(attribute: RootAttribute) -> Self {
        mutate { $0.attributes.append(attribute) }
    }

    func removeAttributes() -> Self {
        mutate { $0.attributes.removeAll() }
    }
}
