//
//  EmptyTag.swift
//  
//
//  Created by Tibor Bodecs on 2022. 02. 11..
//

open class EmptyTag: TypedTag {
    
    override open class var type: `Type`? { .empty }
}
