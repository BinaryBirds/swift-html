import SGML
import SwiftHTML
import Testing

@Suite
struct MetaTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Meta()

        let renderer = Renderer()
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <meta>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
    //
    //    func testColorScheme() {
    //        let doc = Document {
    //            Meta()
    //                .name(.colorScheme)
    //                .content("light dark")
    //        }
    //        var html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            #"<meta name="color-scheme" content="light dark">"#,
    //            html
    //        )
    //
    //        html = DocumentRenderer(minify: true, selfClose: true).render(doc)
    //        XCTAssertEqual(
    //            #"<meta name="color-scheme" content="light dark" />"#,
    //            html
    //        )
    //    }
    //
    //    func testMediaColorScheme() {
    //        let doc = Document {
    //            Meta()
    //                .name(.themeColor)
    //                .content("#fff")
    //                .media(.prefersColorScheme(.light))
    //        }
    //        var html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            ##"<meta name="theme-color" content="#fff" media="(prefers-color-scheme: light)">"##,
    //            html
    //        )
    //
    //        html = DocumentRenderer(minify: true, selfClose: true).render(doc)
    //        XCTAssertEqual(
    //            ##"<meta name="theme-color" content="#fff" media="(prefers-color-scheme: light)" />"##,
    //            html
    //        )
    //    }
    //
    //    func testAppleStatusBarStyle() {
    //        let doc = Document {
    //            Meta()
    //                .name(.appleMobileWebAppStatusBarStyle)
    //                .content("default")
    //        }
    //        var html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            ##"<meta name="apple-mobile-web-app-status-bar-style" content="default">"##,
    //            html
    //        )
    //
    //        html = DocumentRenderer(minify: true, selfClose: true).render(doc)
    //        XCTAssertEqual(
    //            ##"<meta name="apple-mobile-web-app-status-bar-style" content="default" />"##,
    //            html
    //        )
    //    }
    //
}
