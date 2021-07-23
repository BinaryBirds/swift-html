//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func ul(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "ul", children: children)
    }
}

/// The <ul> tag defines an unordered (bulleted) list.
/// 
/// Use the <ul> tag together with the <li> tag to create unordered lists.
/// 
/// Tip: Use CSS to style lists.
/// 
/// Tip: For ordered lists, use the <ol> tag.
public struct Ul: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .ul(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
