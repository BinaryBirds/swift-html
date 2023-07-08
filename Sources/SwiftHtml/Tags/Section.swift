//
//  Section.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<section>` tag defines a section in a document.
open class Section: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
