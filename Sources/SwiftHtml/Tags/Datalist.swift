//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func datalist(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "datalist", children: children)
    }
}

/// The <datalist> tag specifies a list of pre-defined options for an <input> element.
///
/// The <datalist> tag is used to provide an "autocomplete" feature for <input> elements. Users will see a drop-down list of pre-defined options as they input data.
///
/// The <datalist> element's id attribute must be equal to the <input> element's list attribute (this binds them together).
public struct Datalist: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .datalist(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
