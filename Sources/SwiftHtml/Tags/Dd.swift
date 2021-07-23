//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func dd(_ contents: String) -> Node {
        Node(type: .standard, name: "dd", contents: contents)
    }
}

/// The <dd> tag is used to describe a term/name in a description list.
/// 
/// The <dd> tag is used in conjunction with <dl> (defines a description list) and <dt> (defines terms/names).
/// 
/// Inside a <dd> tag you can put paragraphs, line breaks, images, links, lists, etc.
public struct Dd: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .dd(contents)
    }
}
