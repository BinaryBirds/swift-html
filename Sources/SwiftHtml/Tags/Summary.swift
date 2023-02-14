//
//  Summary.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<summary>` tag defines a visible heading for the `<details>` element. The heading can be clicked to view/hide the details.
///
/// **Note:** The `<summary>` element should be the first child element of the `<details>` element.
open class Summary: Tag {
    
    open class override var name: String? { "summary" }
}
