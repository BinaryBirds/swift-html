//
//  Strong.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<strong>` tag is used to define text with strong importance. The content inside is typically displayed in bold.
///
/// **Tip:** Use the `<b>` tag to specify bold text without any extra importance!
open class Strong: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "strong", contents: contents))
    }
}
