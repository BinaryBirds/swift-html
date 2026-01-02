import RSS
import SGML
import Testing

@Suite
struct SwiftRSSTestSuite {

    @Test
    func title() async throws {
        let tag = Title("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <title><![CDATA[foo]]></title>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func description() async throws {
        let tag = Description("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <description><![CDATA[foo]]></description>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func link() async throws {
        let tag = Link("http://localhost/")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link>http://localhost/</link>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func language() async throws {
        let tag = Language("en_US")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <language>en_US</language>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func lastBuildDate() async throws {
        let tag = LastBuildDate("2021-12-19")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <lastBuildDate>2021-12-19</lastBuildDate>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func pubDate() async throws {
        let tag = PubDate("2021-12-19")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <pubDate>2021-12-19</pubDate>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func ttl() async throws {
        let tag = Ttl(250)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ttl>250</ttl>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func guid() async throws {
        let tag = Guid("http://localhost/")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <guid>http://localhost/</guid>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func guidIsPermalink() async throws {
        let tag = Guid("http://localhost/", isPermalink: true)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <guid isPermalink="true">http://localhost/</guid>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func item() async throws {
        let tag = Item {
            Guid("http://localhost/", isPermalink: true)
            Title("lorem")
            Description("ipsum")
            PubDate("2021-12-19")
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <item>
                <guid isPermalink="true">http://localhost/</guid>
                <title><![CDATA[lorem]]></title>
                <description><![CDATA[ipsum]]></description>
                <pubDate>2021-12-19</pubDate>
            </item>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func channel() async throws {
        let tag = Channel {
            Title("lorem")
            Description("ipsum")
            Link("http://localhost/1")
            Language("en_US")
            LastBuildDate("2021-12-18")
            PubDate("2021-12-19")
            Ttl(250)

            Item {
                Guid("http://localhost/", isPermalink: true)
                Title("lorem")
                Description("ipsum")
                PubDate("2021-12-19")
            }
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <channel>
                <title><![CDATA[lorem]]></title>
                <description><![CDATA[ipsum]]></description>
                <link>http://localhost/1</link>
                <language>en_US</language>
                <lastBuildDate>2021-12-18</lastBuildDate>
                <pubDate>2021-12-19</pubDate>
                <ttl>250</ttl>
                <item>
                    <guid isPermalink="true">http://localhost/</guid>
                    <title><![CDATA[lorem]]></title>
                    <description><![CDATA[ipsum]]></description>
                    <pubDate>2021-12-19</pubDate>
                </item>
            </channel>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rss() async throws {
        let tag = Rss(version: "2.0") {
            Channel {
                Title("lorem")
                Description("ipsum")
                Link("http://localhost/1")
                Language("en_US")
                LastBuildDate("2021-12-18")
                PubDate("2021-12-19")
                Ttl(250)

                Item {
                    Guid("http://localhost/", isPermalink: true)
                    Title("lorem")
                    Description("ipsum")
                    PubDate("2021-12-19")
                }
            }
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .xml, root: tag)

        let expectation = #"""
            <?xml version="1.0" encoding="utf-8" ?>
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
                        <guid isPermalink="true">http://localhost/</guid>
                        <title><![CDATA[lorem]]></title>
                        <description><![CDATA[ipsum]]></description>
                        <pubDate>2021-12-19</pubDate>
                    </item>
                </channel>
            </rss>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
