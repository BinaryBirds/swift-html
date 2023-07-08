//
//  Mark.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<mark>` tag defines text that should be marked or highlighted.
open class Mark: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
