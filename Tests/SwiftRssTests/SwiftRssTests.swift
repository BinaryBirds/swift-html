//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import XCTest
@testable import SwiftRss

final class RssTests: XCTestCase {

    func testA() {
        let doc = Document(.unspecified) {
            Rss {
                Channel {
                    Title("lorem")
                    Description("ipsum")
                    
                    Item {
                        Title("lorem")
                        Description("ipsum")
                        PubDate("lorem")
                        Guid("lorem")
                    }
                }
            }
        }
        XCTAssertEqual(DocumentRenderer().render(doc), """
        <rss version="2.0">
            <channel>
                <title>lorem</title>
                <description>ipsum</description>
                <item>
                    <title>lorem</title>
                    <description>ipsum</description>
                    <pubDate>lorem</pubDate>
                    <guid>lorem</guid>
                </item>
            </channel>
        </rss>
        """)
    }

}
