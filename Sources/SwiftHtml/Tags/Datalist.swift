//
//  Datalist.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<datalist>` tag specifies a list of pre-defined options for an `<input>` element.
///
/// The `<datalist>` tag is used to provide an "autocomplete" feature for `<input>` elements. Users will see a drop-down list of pre-defined options as they input data.
///
/// The `<datalist>` element's id attribute must be equal to the `<input>` element's list attribute (this binds them together).
open class Datalist: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
