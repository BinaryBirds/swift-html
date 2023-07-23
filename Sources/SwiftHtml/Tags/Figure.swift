//
//  Figure.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<figure>` tag specifies self-contained content, like illustrations, diagrams, photos, code listings, etc.
///
/// While the content of the `<figure>` element is related to the main flow, its position is independent of the main flow, and if removed it should not affect the flow of the document.
///
/// **Tip:** The `<figcaption>` element is used to add a caption for the `<figure>` element.
open class Figure: StandardTag {
    
    override open class var name: String { .init(Figure.self) }
}

