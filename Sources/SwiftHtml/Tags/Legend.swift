//
//  Legend.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<legend>` tag defines a caption for the `<fieldset>` element.
open class Legend: StandardTag {
    
    override open class var name: String { .init(describing: Legend.self).lowercased() }
}
