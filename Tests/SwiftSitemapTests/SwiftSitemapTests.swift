//
//  SwiftSitemapTests.swift
//  SwiftSitemapTests
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import XCTest
@testable import SwiftSitemap

final class SwiftSitemapTests: XCTestCase {

    func testA() {
        let doc = Document(.xml) {
            UrlSet {
                Url {
                    Loc("http://localhost/")
                    LastMod("2021-12-19")
                    ChangeFreq(.monthly)
                    Priority(0.5)
                }
            }
        }
        let html = """
        <?xml version="1.0" encoding="utf-8" ?>
        <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
            <url>
                <loc>http://localhost/</loc>
                <lastmod>2021-12-19</lastmod>
                <changefreq>monthly</changefreq>
                <priority>0.5</priority>
            </url>
        </urlset>
        """
        assert(doc: doc, html: html)
    }

}
