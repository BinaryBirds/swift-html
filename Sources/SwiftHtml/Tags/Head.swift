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
    
    override open class var name: String { .init(describing: Head.self).lowercased() }
    
    public convenience init(title: Title? = nil,
                            styles: [Style] = [],
                            bases: [Base] = [],
                            links: [Link] = [],
                            metas: [Meta] = [],
                            scripts: [Script] = [],
                            noscripts: [Noscript] = [],
                            @TagBuilder _ builder: () -> Tag) {
        self.init(name: Self.name) {
            title != nil ? [title!] : []
            styles
            bases
            links
            metas
            scripts
            noscripts
            [builder()]
        }
    }
}
