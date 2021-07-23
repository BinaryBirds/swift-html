//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func template(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "template", children: children)
    }
}

/// The <template> tag is used as a container to hold some HTML content hidden from the user when the page loads.
///
/// The content inside <template> can be rendered later with a JavaScript.
///
/// You can use the <template> tag if you have some HTML code you want to use over and over again, but not until you ask for it. To do this without the <template> tag, you have to create the HTML code with JavaScript to prevent the browser from rendering the code.
public struct Template: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .template(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}



