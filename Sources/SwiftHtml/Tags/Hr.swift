//
//  Hr.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<hr>` tag defines a thematic break in an HTML page (e.g. a shift of topic).
///
/// The `<hr>` element is most often displayed as a horizontal rule that is used to separate content (or define a change) in an HTML page.
open class Hr: EmptyTag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
