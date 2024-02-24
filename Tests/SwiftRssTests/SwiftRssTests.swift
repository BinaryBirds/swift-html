//
//  SwiftRssTests.swift
//  SwiftRssTests
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import XCTest

@testable import SwiftRss

final class SwiftRssTests: XCTestCase {

    func testA() {
        let doc = Document(.xml) {
            Rss {
                Channel {
                    Title("lorem")
                    Description("ipsum")
                    Link("")
                    Language("en_US")
                    LastBuildDate("2021-12-19")
                    PubDate("2021-12-19")
                    Ttl(250)

                    Item {
                        Guid("http://localhost/")
                            .isPermalink()
                        Title("lorem")
                        Description("ipsum")
                        PubDate("lorem")

                    }
                }
            }
        }
        let html = """
            <?xml version="1.0" encoding="utf-8" ?>
            <rss version="2.0">
                <channel>
                    <title><![CDATA[lorem]]></title>
                    <description><![CDATA[ipsum]]></description>
                    <link></link>
                    <language>en_US</language>
                    <lastBuildDate>2021-12-19</lastBuildDate>
                    <pubDate>2021-12-19</pubDate>
                    <ttl>250</ttl>
                    <item>
                        <guid isPermalink="true">http://localhost/</guid>
                        <title><![CDATA[lorem]]></title>
                        <description><![CDATA[ipsum]]></description>
                        <pubDate>lorem</pubDate>
                    </item>
                </channel>
            </rss>
            """
        assert(doc: doc, html: html)
    }

}
