//
//  GroupTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//


open class GroupTag: Tag {

    open override class func createNode() -> Node {
        .init(type: .group)
    }
}
