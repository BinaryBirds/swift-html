//
//  SwiftSitemapTests.swift
//  SwiftSitemapTests
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import XCTest
import SwiftSgml
@testable import SwiftSitemap

final class SwiftSitemapTests: XCTestCase {
    
    func testLoc() {
        let document = Document {
            Loc("foo")
        }
        let expectation = """
        <loc>foo</loc>
        """
        XCTAssertDocument(document, expectation)
    }
    
    func testLastMod() {
        let document = Document {
            LastMod("2016-09-01")
        }
        let expectation = """
        <lastmod>2016-09-01</lastmod>
        """
        XCTAssertDocument(document, expectation)
    }
    
    func testChangeFreq() {
        let document = Document {
            ChangeFreq(.daily)
        }
        let expectation = """
        <changefreq>daily</changefreq>
        """
        XCTAssertDocument(document, expectation)
    }

    func testPriority() {
        let document = Document {
            Priority(0.5)
        }
        let expectation = """
        <priority>0.5</priority>
        """
        XCTAssertDocument(document, expectation)
    }
    
    func testUrl() {
        let document = Document {
            Url {
                Loc("foo")
                LastMod("2018-10-17")
                ChangeFreq(.always)
                Priority(0.5)
            }
        }
        let expectation = """
        <url>
            <loc>foo</loc>
            <lastmod>2018-10-17</lastmod>
            <changefreq>always</changefreq>
            <priority>0.5</priority>
        </url>
        """
        XCTAssertDocument(document, expectation)
    }
    
    func testUrlSet() {
        let document = Document {
            UrlSet {
                Url {
                    Loc("foo")
                    LastMod("2016-09-01")
                    ChangeFreq(.always)
                    Priority(0.5)
                }
                Url {
                    Loc("foo")
                    LastMod("2018-10-17")
                    ChangeFreq(.always)
                    Priority(0.5)
                }
            }
        }
        let expectation = """
        <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
            <url>
                <loc>foo</loc>
                <lastmod>2016-09-01</lastmod>
                <changefreq>always</changefreq>
                <priority>0.5</priority>
            </url>
            <url>
                <loc>foo</loc>
                <lastmod>2018-10-17</lastmod>
                <changefreq>always</changefreq>
                <priority>0.5</priority>
            </url>
        </urlset>
        """
        XCTAssertDocument(document, expectation)
    }

    func testSitemap() {
        let sitemap = Sitemap {
            UrlSet {
                Url {
                    Loc("http://localhost/")
                    LastMod("2011-04-14")
                    ChangeFreq(.monthly)
                    Priority(0.5)
                }
            }
        }
        let expectation = """
            <?xml version="1.0" encoding="utf-8" ?>
            <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
                <url>
                    <loc>http://localhost/</loc>
                    <lastmod>2011-04-14</lastmod>
                    <changefreq>monthly</changefreq>
                    <priority>0.5</priority>
                </url>
            </urlset>
            """
        XCTAssertDocument(sitemap.document, expectation)
    }

}
