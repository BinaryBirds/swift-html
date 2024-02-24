//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml

protocol RootChildElement: Element {}

extension Branch: RootChildElement {}

struct Root: StandardElement, Attributed, Mutable {

    var children: [any Element]
    var attributes: [any Attribute]
    
    init(
        @Builder<Attribute> attributes b2: () -> [any Attribute] = { [] },
        @Builder<RootChildElement> elements b1: () -> [RootChildElement] = { [] }
    ) {
        self.children = b1()
        self.attributes = b2()
    }
    
    init(
        @Builder<RootChildElement> _ b1: () -> [RootChildElement] = { [] }
    ) {
        self.init(attributes: {}, elements: b1)
    }

//    func add(child: RootChildElement) -> Self {
//        mutate { $0.children.append(child) }
//    }
}



