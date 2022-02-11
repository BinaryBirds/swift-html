//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: Tag {
    
    open override class func createNode() -> Node {
        Node(type: .empty, name: String(describing: self).lowercased())
    }

    public init() {
        super.init()
    }
}
