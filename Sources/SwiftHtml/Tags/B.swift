//
//  B.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// Make some text bold (without marking it as important)
open class B: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}
