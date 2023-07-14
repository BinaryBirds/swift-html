//
//  EmptyTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: TagKind {
    
    override open class var kind: Kind? { .empty }
}
