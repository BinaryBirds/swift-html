//
//  EmptyTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: Tag {
    
    override class var node: Node { .init(type: .empty, name: String(describing: self).lowercased()) }

    public init() {
        super.init()
    }
}
