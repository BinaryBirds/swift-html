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
            var htmlValue = children.map(\.html).joined(separator: "")
            if !children.isEmpty {
                htmlValue = htmlValue + "\n"
            }
            return "\n<" + name! + (attributes.isEmpty ? "" : " ") + attributesList + ">" + (contents ?? htmlValue) + "</" + name! + ">"
        case .comment:
            return "\n<!--" + (contents ?? "") + "-->"
        case .empty:
            return "\n<" + name! + (attributes.isEmpty ? "" : " ") + attributesList + ">"
        }
    }
    
    private var attributesList: String {
        return attributes.reduce([]) { res, next in
            if let value = next.value {
                return res + [next.key + #"=""# + value + #"""#]
            }
            return res + [next.key]
        }.joined(separator: " ")
    }
}

extension Node {
    
    func addOrReplace(_ attribute: Attribute) -> Node {
        var newNode = self
        newNode.attributes = newNode.attributes.filter { $0.key != attribute.key }
        newNode.attributes.append(attribute)
        return newNode
    }
}

