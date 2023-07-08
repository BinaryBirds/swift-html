//
//  Legend.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<legend>` tag defines a caption for the `<fieldset>` element.
open class Legend: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
