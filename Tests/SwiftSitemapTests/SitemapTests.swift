//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import XCTest
@testable import SwiftSitemap

final class SitemapTests: XCTestCase {

    func testA() {
        let doc = Document(.xml) {
            Urlset {
                Url {
                    Loc("http://localhost/")
                    Lastmod("2021-12-19")
                    Changefreq(.monthly)
                    Priority(0.5)
                }
            }
        }
        XCTAssertEqual(DocumentRenderer().render(doc), """
        <?xml version="1.0" encoding="utf-8" ?>
        <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
            <url>
                <loc>http://localhost/</loc>
                <lastmod>2021-12-19</lastmod>
                <changefreq>monthly</changefreq>
                <priority>0.5</priority>
            </url>
        </urlset>
        """)
    }

}
