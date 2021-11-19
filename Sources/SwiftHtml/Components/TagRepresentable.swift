//
//  Tag.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public protocol TagRepresentable {
    var node: Node { get }
    var tags: [Tag] { get }
}

//public protocol TagRepresentable {
//    @TagBuilder var tag: Tag { get }
//}
