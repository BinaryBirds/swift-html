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
                            @TagBuilder style: () -> [Style]?,
                            @TagBuilder base: () -> [Base]?,
                            @TagBuilder link: () -> [Link]?,
                            @TagBuilder meta: () -> [Meta]?,
                            @TagBuilder script: () -> [Script]?,
                            @TagBuilder noscript: () -> [Noscript]?,
                            @TagBuilder _ builder: () -> Tag) {
        let temp = Tag {
            title != nil ? [title!] : []
            style() ?? []
            base() ?? []
            link() ?? []
            meta() ?? []
            script() ?? []
            noscript() ?? []
            [builder()]
        }
        self.init(name: Self.name, temp.children)
    }
}
