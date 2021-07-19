//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct Body: Tag {
    var node: Node

    init(attributes: [Attribute] = [], @TagBuilder _ builder: () -> [Tag]) {
        let children = builder().map(\.node)
        node = .init(type: .standard, name: "body", attributes: attributes, children: children)
    }
}

