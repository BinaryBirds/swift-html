//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func abbr(_ contents: String) -> Node {
        Node(type: .standard, name: "abbr", contents: contents)
    }
}

/// The <abbr> tag defines an abbreviation or an acronym, like "HTML", "CSS", "Mr.", "Dr.", "ASAP", "ATM".
///
/// **Tip:** Use the global title attribute to show the description for the abbreviation/acronym when you mouse over the element.
public struct Abbr: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .abbr(contents)
    }
}
