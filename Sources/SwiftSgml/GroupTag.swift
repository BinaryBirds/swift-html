//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//


open class GroupTag: Tag {
    
    open class override var name: String? { nil }

    open class override var type: Node.NodeType { .group }
}
