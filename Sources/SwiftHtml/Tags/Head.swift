//
//  Head.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<head>` element is a container for metadata (data about data) and is placed between the `<html>` tag and the `<body>` tag.
///
/// Metadata is data about the HTML document. Metadata is not displayed.
///
/// Metadata typically define the document title, character set, styles, scripts, and other meta information.
///
/// The following elements can go inside the `<head>` element:
///
/// - `<title>` (required in every HTML document)
/// - `<style>`
/// - `<base>`
/// - `<link>`
/// - `<meta>`
/// - `<script>`
/// - `<noscript>`
open class Head: StandardTag {
    
    override open class var name: String { .init(Head.self) }
    
    public let scripts: [Script]?
    
    public init(scripts: [Script]? = nil,
                @TagBuilder _ builder: () -> Tag) {
        self.scripts = scripts
        let temp = Tag {
            builder()
            if let scripts = scripts {
                Tag { scripts }
            }
        }
        super.init(temp.children)
    }
}
