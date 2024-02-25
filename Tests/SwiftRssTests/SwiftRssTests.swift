//
//  SwiftRssTests.swift
//  SwiftRssTests
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import SwiftSgml
import XCTest

@testable import SwiftRss

final class SwiftRssTests: XCTestCase {

    func testTitle() {
        let document = Document {
            Title("foo")
        }
        let expectation = """
            <title><![CDATA[foo]]></title>
            """
        XCTAssertDocument(document, expectation)
    }

    func testDescription() {
        let document = Document {
            Description("lorem ipsum")
        }
        let expectation = """
            <description><![CDATA[lorem ipsum]]></description>
            """
        XCTAssertDocument(document, expectation)
    }

    func testLink() {
        let document = Document {
            Link("http://localhost/")
        }
        let expectation = """
            <link>http://localhost/</link>
            """
        XCTAssertDocument(document, expectation)
    }

    func testLanguage() {
        let document = Document {
            Language("en_US")
        }
        let expectation = """
            <language>en_US</language>
            """
        XCTAssertDocument(document, expectation)
    }

    func testLastBuildDate() {
        let document = Document {
            LastBuildDate("2021-12-19")
        }
        let expectation = """
            <lastBuildDate>2021-12-19</lastBuildDate>
            """
        XCTAssertDocument(document, expectation)
    }

    func testPubDate() {
        let document = Document {
            PubDate("2021-12-19")
        }
        let expectation = """
            <pubDate>2021-12-19</pubDate>
            """
        XCTAssertDocument(document, expectation)
    }

    func testTtl() {
        let document = Document {
            Ttl(250)
        }
        let expectation = """
            <ttl>250</ttl>
            """
        XCTAssertDocument(document, expectation)
    }

    func testGuid1() {
        let document = Document {
            Guid("http://localhost/") {
                IsPermalink(true)
            }
        }
        let expectation = """
            <guid isPermalink="true">http://localhost/</guid>
            """
        XCTAssertDocument(document, expectation)
    }

    func testGuid2() {
        let document = Document {
            Guid("http://localhost/")
                .add(attribute: IsPermalink(false))
        }
        let expectation = """
            <guid isPermalink="false">http://localhost/</guid>
            """
        XCTAssertDocument(document, expectation)
    }

    func testItem() {
        let document = Document {
            Item {
                Guid("http://localhost/") {
                    IsPermalink(true)
                }
                Title("lorem")
                Description("ipsum")
                PubDate("2021-12-19")
            }
        }
        let expectation = """
            <item>
                <guid isPermalink="true">http://localhost/</guid>
                <title><![CDATA[lorem]]></title>
                <description><![CDATA[ipsum]]></description>
                <pubDate>2021-12-19</pubDate>
            </item>
            """
        XCTAssertDocument(document, expectation)
    }

    func testChannel() {
        let document = Document {
            Channel {
                Title("lorem")
                Description("ipsum")
                Link("http://localhost/1")
                Language("en_US")
                LastBuildDate("2021-12-18")
                PubDate("2021-12-19")
                Ttl(250)

                Item {
                    Guid("http://localhost/2") {
                        IsPermalink(true)
                    }
                    Title("dolor")
                    Description("sit")
                    PubDate("2021-12-19")
                }
            }
        }
        let expectation = """
            <channel>
                <title><![CDATA[lorem]]></title>
                <description><![CDATA[ipsum]]></description>
                <link>http://localhost/1</link>
                <language>en_US</language>
                <lastBuildDate>2021-12-18</lastBuildDate>
                <pubDate>2021-12-19</pubDate>
                <ttl>250</ttl>
                
                <item>
                    <guid isPermalink="true">http://localhost/2</guid>
                    <title><![CDATA[dolor]]></title>
                    <description><![CDATA[sit]]></description>
                    <pubDate>2021-12-19</pubDate>
                </item>
            </channel>
            """
        XCTAssertDocument(document, expectation)
    }

    func testRss() {
        let document = Document {
            Rss {
                [
                    Channel {
                        Title("lorem")
                        Description("ipsum")
                        Link("http://localhost/1")
                        Language("en_US")
                        LastBuildDate("2021-12-18")
                        PubDate("2021-12-19")
                        Ttl(250)

                        Item {
                            Guid("http://localhost/2") {
                                IsPermalink(true)
                            }
                            Title("dolor")
                            Description("sit")
                            PubDate("2021-12-19")
                        }
                    },
                    Channel {
                        Title("lorem")
                        Description("ipsum")
                        Link("http://localhost/1")
                        Language("en_US")
                        LastBuildDate("2021-12-18")
                        PubDate("2021-12-19")
                        Ttl(250)

                        Item {
                            Guid("http://localhost/2") {
                                IsPermalink(true)
                            }
                            Title("dolor")
                            Description("sit")
                            PubDate("2021-12-19")
                        }
                    },
                ]
            }
        }
        let expectation = """
            <rss version="2.0">
            <channel>
                <title><![CDATA[lorem]]></title>
                <description><![CDATA[ipsum]]></description>
                <link>http://localhost/1</link>
                <language>en_US</language>
                <lastBuildDate>2021-12-18</lastBuildDate>
                <pubDate>2021-12-19</pubDate>
                <ttl>250</ttl>
                
                <item>
                    <guid isPermalink="true">http://localhost/2</guid>
                    <title><![CDATA[dolor]]></title>
                    <description><![CDATA[sit]]></description>
                    <pubDate>2021-12-19</pubDate>
                </item>
            </channel>
            <channel>
                <title><![CDATA[lorem]]></title>
                <description><![CDATA[ipsum]]></description>
                <link>http://localhost/1</link>
                <language>en_US</language>
                <lastBuildDate>2021-12-18</lastBuildDate>
                <pubDate>2021-12-19</pubDate>
                <ttl>250</ttl>
                
                <item>
                    <guid isPermalink="true">http://localhost/2</guid>
                    <title><![CDATA[dolor]]></title>
                    <description><![CDATA[sit]]></description>
                    <pubDate>2021-12-19</pubDate>
                </item>
            </channel>
            </rss>
            """
        XCTAssertDocument(document, expectation)
    }

    func testDocument() {
        let document = Document.Rss {
            Channel {
                Title("lorem")
                Description("ipsum")
                Link("")
                Language("en_US")
                LastBuildDate("2021-12-19")
                PubDate("2021-12-19")
                Ttl(250)

                Item {
                    Guid("http://localhost/") {
                        IsPermalink(true)
                    }
                    Title("lorem")
                    Description("ipsum")
                    PubDate("lorem")
                }
            }
        }

        let expectation = """
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
        XCTAssertDocument(document, expectation)
    }

}
