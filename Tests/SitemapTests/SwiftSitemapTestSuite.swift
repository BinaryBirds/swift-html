import SGML
import Sitemap
import Testing

@Suite
struct SwiftRSSTestSuite {

    @Test
    func title() async throws {
        let tag = Loc("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <loc>foo</loc>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func lastMod() async throws {
        let tag = LastMod("2016-09-01")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <lastmod>2016-09-01</lastmod>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func changeFreq() async throws {
        let tag = ChangeFreq(.daily)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <changefreq>daily</changefreq>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func priority() async throws {
        let tag = Priority(0.5)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <priority>0.5</priority>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func url() async throws {
        let tag = Url {
            Loc("foo")
            LastMod("2018-10-17")
            ChangeFreq(.always)
            Priority(0.5)
        }

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <url>
                <loc>foo</loc>
                <lastmod>2018-10-17</lastmod>
                <changefreq>always</changefreq>
                <priority>0.5</priority>
            </url>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func sitemap() async throws {
        let tag = Urlset {
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

        let renderer = Renderer(indent: 4)
        let doc = Document(type: .xml, root: tag)

        let expectation = #"""
            <?xml version="1.0" encoding="utf-8" ?>
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
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
