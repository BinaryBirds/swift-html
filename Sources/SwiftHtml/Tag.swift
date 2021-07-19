//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation


public protocol NodeRepresentable {
    var node: Node { get }
    init(_ node: Node)
}


public protocol Tag: NodeRepresentable, HTMLRepresentable {
    
}

/// https://www.w3schools.com/tags/ref_standardattributes.asp
public extension Tag {

    var html: String { node.html }
    
    func `id`(_ value: String) -> Self {
        var attr = node.attributes
        attr.append(.init(key: "id", value: value))
        return .init(.init(type: node.type, name: node.name, contents: node.contents, attributes: attr, children: node.children))
    }
    
    func `class`(_ value: String) -> Self {
        var attr = node.attributes
        attr.append(.init(key: "class", value: value))
        return .init(.init(type: node.type, name: node.name, contents: node.contents, attributes: attr, children: node.children))
    }
}
