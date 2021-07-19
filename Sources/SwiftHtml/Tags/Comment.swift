//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct Comment: Tag {
    var node: Node

    init(_ value: String?) {
        node = .init(type: .comment, name: "", value: value, attributes: [], children: [])
    }
}

