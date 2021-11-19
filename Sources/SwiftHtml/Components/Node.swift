//
//  Node.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public struct Node {

    /// internal node types
    enum NodeType {
        /// standard container tags
        case standard     // <div>  </div>
        /// comment tag
        case comment      // <!--   -->
        // @TODO: force close tags? <br> vs <br/>
        /// non-container tags
        case empty        // <br>
        /// invisible node for grouping other nodes
//        case group    // *invisible group*<h1>lorem</h1><p>ipsum</p>*invisible group*
    }

    var type: NodeType
    var name: String?
    var contents: String?
    var attributes: [Attribute]

    init(type: NodeType = .standard,
         name: String? = nil,
         contents: String? = nil,
         attributes: [Attribute] = []
    ) {
        self.type = type
        self.name = name
        self.contents = contents
        self.attributes = attributes
    }

    
}

extension Node {
    
    func addOrReplace(_ attribute: Attribute) -> Node {
        var newNode = self
        newNode.attributes = newNode.attributes.filter { $0.key != attribute.key }
        newNode.attributes.append(attribute)
        return newNode
    }

    func remove(_ attribute: Attribute) -> Node {
        var newNode = self
        newNode.attributes = newNode.attributes.filter { $0.key != attribute.key }
        return newNode
    }
}

