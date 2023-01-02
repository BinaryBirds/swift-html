//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: Tag {

    open class override var type: Node.NodeType { .empty }
    
    public init() {
        super.init()
    }
}
