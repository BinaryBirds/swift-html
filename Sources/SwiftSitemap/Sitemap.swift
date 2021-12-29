//
//  Sitemap.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

// https://www.sitemaps.org/protocol.html
open class Sitemap: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "sitemap"), children: builder())
        
    }
}
