//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml

struct Branch: MutableParentElement {

    var children: [any Element]
    
    public init(
        @Builder<Element> elements b1: () -> [Element] = { [] }
    ) {
        self.children = b1()
    }
}
