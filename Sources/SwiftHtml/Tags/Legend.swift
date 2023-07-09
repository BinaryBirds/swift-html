//
//  Legend.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<legend>` tag defines a caption for the `<fieldset>` element.
open class Legend: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}
