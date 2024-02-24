//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 24/02/2024.
//

import SwiftSgml

struct Leaf: StandardElement {

    var children: [any Element]
    
    init(_ value: String) {
        self.children = [
            Text(value)
        ]
    }
    
    
}