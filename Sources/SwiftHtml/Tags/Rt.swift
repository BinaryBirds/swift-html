//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func rt(_ contents: String) -> Node {
        Node(type: .standard, name: "rt", contents: contents)
    }
}

/// The <rt> tag defines an explanation or pronunciation of characters (for East Asian typography) in a ruby annotation.
///
/// Use <rt> together with <ruby> and <rp>: The <ruby> element consists of one or more characters that needs an explanation/pronunciation, and an <rt> element that gives that information, and an optional <rp> element that defines what to show for browsers that not support ruby annotations.
public struct Rt: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .rt(contents)
    }

}
