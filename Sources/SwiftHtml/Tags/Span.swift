//
//  Span.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<span>` tag is an inline container used to mark up a part of a text, or a part of a document.
///
/// The `<span>` tag is easily styled by CSS or manipulated with JavaScript using the class or id attribute.
///
/// The `<span>` tag is much like the `<div>` element, but `<div>` is a block-level element and `<span>` is an inline element.
open class Span: Tag {
    
    public init(_ contents: String? = nil, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "span", contents: contents), children: builder())
    }

    public convenience init(_ contents: String) {
        self.init(contents) {}
    }

}
