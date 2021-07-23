//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func em(_ contents: String) -> Node {
        Node(type: .standard, name: "em", contents: contents)
    }
}

/// The <em> tag is used to define emphasized text. The content inside is typically displayed in italic.
///
/// A screen reader will pronounce the words in <em> with an emphasis, using verbal stress.
public struct Em: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .em(contents)
    }
}
