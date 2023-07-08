//
//  B.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// Make some text bold (without marking it as important)
open class B: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
