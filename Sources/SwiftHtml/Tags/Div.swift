//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func div(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "div", children: children)
    }
}

/// The <div> tag defines a division or a section in an HTML document.
///
/// The <div> tag is used as a container for HTML elements - which is then styled with CSS or manipulated with JavaScript.
///
/// The <div> tag is easily styled by using the class or id attribute.
///
/// Any sort of content can be put inside the <div> tag!
///
/// Note: By default, browsers always place a line break before and after the <div> element.
public struct Div: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .div(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}



