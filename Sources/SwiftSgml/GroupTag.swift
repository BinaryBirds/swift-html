//
//  GroupTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//


open class GroupTag: Tag {
    
    override class var node: Node { .init(type: .group) }
}
