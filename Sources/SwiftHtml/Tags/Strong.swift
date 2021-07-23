//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func strong(_ contents: String) -> Node {
        Node(type: .standard, name: "strong", contents: contents)
    }
}

/// The <strong> tag is used to define text with strong importance. The content inside is typically displayed in bold.
///
/// Tip: Use the <b> tag to specify bold text without any extra importance!
public struct Strong: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .strong(contents)
    }
}
