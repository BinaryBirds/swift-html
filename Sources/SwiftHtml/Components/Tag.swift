//
//  Tag.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public protocol NodeRepresentable {
    var node: Node { get }
    init(_ node: Node)
}


public protocol Tag: NodeRepresentable, HTMLRepresentable {
    
}

public extension Tag {
    var html: String { node.html }
}
