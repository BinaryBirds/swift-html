//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func col() -> Node {
        Node(type: .empty, name: "col")
    }
}

/// The <col> tag specifies column properties for each column within a <colgroup> element.
/// 
/// The <col> tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
public struct Col: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .col()
    }
    
    /// Sets the number of columns a <col> element should span
    public func span(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "span", value: String(value))))
    }
}
