//
//  Html.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<html>` tag represents the root of an HTML document.
///
/// The `<html>` tag is the container for all other HTML elements (except for the `<!DOCTYPE>` tag).
///
/// **Note:** You should always include the lang attribute inside the `<html>` tag, to declare the language of the Web page. This is meant to assist search engines and browsers.
open class Html: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}

public extension Html {
    
    /// Specifies the XML namespace attribute (If you need your content to conform to XHTML)
    func xmlns() -> Self {
        attribute("xmlns", "http://www.w3.org/1999/xhtml")
    }
}
