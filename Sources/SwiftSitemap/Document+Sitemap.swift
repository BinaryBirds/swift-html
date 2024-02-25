//
//  Sitemap.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml

// https://www.sitemaps.org/protocol.html
extension Document {

    public static func Sitemap(
        @Builder<UrlSet> _ builder: () -> [UrlSet]
    ) -> Document {
        .init(.xml) {
            builder().map { $0 }
        }
    }
}
