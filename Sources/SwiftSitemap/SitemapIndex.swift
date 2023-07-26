//
//  SitemapIndex.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class SitemapIndex: StandardTag {
    
    override open class var name: String { .init(describing: SitemapIndex.self).lowercased() }

    public init(@TagBuilder _ builder: () -> Tag) {
        super.init([builder()])
        setAttributes([
            .init(key: "xmlns", value: "http://www.sitemaps.org/schemas/sitemap/0.9"),
        ])
    }
}
