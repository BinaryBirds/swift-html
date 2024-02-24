//
//  File.swift
//
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml

struct Leaf: ParentElement, MutableAttributes {

    var children: [Element]
    var attributes: [Attribute]

    init(_ value: String) {
        self.children = [
            Text(value)
        ]
        self.attributes = []
    }

}
