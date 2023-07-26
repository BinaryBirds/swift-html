//
//  Aside.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<aside>` tag defines some content aside from the content it is placed in.
/// 
/// The aside content should be indirectly related to the surrounding content.
/// 
/// **Tip:** The `<aside>` content is often placed as a sidebar in a document.
/// 
/// **Note:** The `<aside>` element does not render as anything special in a browser.
/// However, you can use CSS to style the `<aside>` element (see example below).
open class Aside: StandardTag {
    
    override open class var name: String { .init(describing: Aside.self).lowercased() }
}

