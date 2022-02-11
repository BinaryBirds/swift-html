//
//  Node.swift
//  SwiftSgml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public struct Node {

    /// internal node types
    public enum NodeType {
        /// standard container tags
        case standard     // <div>  </div>
        /// comment tag
        case comment      // <!--   -->
        // @TODO: force close tags? <br> vs <br/>
        /// non-container tags
        case empty        // <br>
        /// invisible node for grouping other nodes
        case group    // *invisible group*<h1>lorem</h1><p>ipsum</p>*invisible group*
    }

    public let type: NodeType
    public let name: String?
    public var contents: String?
    public internal(set) var attributes: [Attribute]

    public init(type: NodeType = .standard,
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

public extension Node {
    
    /// add or replace an attribute with a given key to the node
    mutating func upsert(_ attribute: Attribute) {
        delete(attribute)
        attributes.append(attribute)
    }

    /// deletes a attribute with a given key from the node
    mutating func delete(_ attribute: Attribute) {
        attributes = attributes.filter { $0.key != attribute.key }
    }
}

