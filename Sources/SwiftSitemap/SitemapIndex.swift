//
//  SitemapIndex.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

public final class SitemapIndex: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "sitemapindex", attributes: [
            .init(key: "xmlns", value: "http://www.sitemaps.org/schemas/sitemap/0.9"),
        ]), children: builder())
        
    }
}
