//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public struct Node {

    public enum NodeType {
        /// standard container tags
        case standard     // <div>  </div>
        /// comment tag
        case comment      // <!--   -->
        // @TODO: force close tags? <br> vs <br/>
        /// non-container tags
        case empty        // <br>
    }

    var type: NodeType
    var name: String?
    var contents: String?
    var attributes: [Attribute]
    var children: [Node]

    init(type: NodeType = .standard,
         name: String? = nil,
         contents: String? = nil,
         attributes: [Attribute] = [],
         children: [Node] = []
    ) {
        self.type = type
        self.name = name
        self.contents = contents
        self.attributes = attributes
        self.children = children
    }

    var html: String {
        switch type {
        case .standard:
            var attr = attributes.map { $0.key + "=\"" + $0.value + "\"" }.joined(separator: " ")
            if !attributes.isEmpty {
                attr = " " + attr
            }
            var htmlValue = children.map(\.html).joined(separator: "")
            if !children.isEmpty {
                htmlValue = htmlValue + "\n"
            }
            return "\n<" + name! + attr + ">" + (contents ?? htmlValue) + "</" + name! + ">"
        case .comment:
            return "\n<!--" + (contents ?? "") + "-->"
        case .empty:
            var attr = attributes.map { $0.key + "=\"" + $0.value + "\"" }.joined(separator: " ")
            if !attributes.isEmpty {
               attr = " " + attr
            }
            return "\n<" + name! + attr + ">"
        }
    }
}

