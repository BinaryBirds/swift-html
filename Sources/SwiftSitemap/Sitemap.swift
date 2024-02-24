//
//  Sitemap.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

// https://www.sitemaps.org/protocol.html
public struct Sitemap {

    public let document: Document

    public init(@Builder<UrlSet> _ builder: () -> [UrlSet]) {
        self.document = Document(.xml) {
            builder().map { $0 }
        }
    }
}
