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
    
    public private(set) var title: Title?
    public private(set) var styles: [Style]?
    public private(set) var links: [Link]?
    public private(set) var metas: [Meta]?
    public private(set) var scripts: [Script]?
    public private(set) var bases: [Base]?
    
    public init(title: Title? = nil,
                styles: [Style] = [],
                links: [Link] = [],
                metas: [Meta] = [],
                scripts: [Script] = [],
                bases: [Base] = [],
                _ children: [Tag]? = nil) {
        self.title = title
        self.styles = styles
        self.links = links
        self.metas = metas
        self.scripts = scripts
        self.bases = bases
        super.init(name: Self.name, Tag {
            title != nil ? [title!] : []
            styles
            links
            metas
            scripts
            bases
            children ?? []
        }.children)
    }
    
    public convenience init(title: Title? = nil,
                            styles: [Style] = [],
                            links: [Link] = [],
                            metas: [Meta] = [],
                            scripts: [Script] = [],
                            bases: [Base] = [],
                            @TagBuilder _ builder: () -> Tag) {
        self.init(title: title,
                  styles: styles,
                  links: links,
                  metas: metas,
                  scripts: scripts,
                  bases: bases,
                  [builder()])
    }
}
