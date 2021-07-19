//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

struct Node {

    enum TagType {
        /// standard container tags
        case standard     // <div>  </div>
        /// comment tag
        case comment      // <!--   -->
        // @TODO: force close tags? <br> vs <br/>
        /// non-container tags
        case empty        // <br>
    }

    var type: TagType
    var name: String
    var value: String?
    var attributes: [Attribute]
    var children: [Node]

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
            return "\n<" + name + attr + ">" + (value ?? htmlValue) + "</" + name + ">"
        case .comment:
            return "\n<!--" + (value ?? "") + "-->"
        case .empty:
            var attr = attributes.map { $0.key + "=\"" + $0.value + "\"" }.joined(separator: " ")
            if !attributes.isEmpty {
               attr = " " + attr
            }
            return "\n<" + name + attr + ">"
        }
    }
}
