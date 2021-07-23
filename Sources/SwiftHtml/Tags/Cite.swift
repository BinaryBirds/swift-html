//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func cite(_ contents: String) -> Node {
        Node(type: .standard, name: "cite", contents: contents)
    }
}

/// The <cite> tag defines the title of a creative work (e.g. a book, a poem, a song, a movie, a painting, a sculpture, etc.).
/// 
/// Note: A person's name is not the title of a work.
/// 
/// The text in the <cite> element usually renders in italic.
public struct Cite: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .cite(contents)
    }
}
