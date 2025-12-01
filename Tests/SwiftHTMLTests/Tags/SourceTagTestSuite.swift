import Testing

@testable import SwiftHTML

@Suite
struct SourceTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Source()
            .src("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <source src="foo">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
    // @Test
    //    func testColorScheme() {
    //        let doc = Document {
    //            Source()
    //                .srcset("img.png")
    //                .media([.prefersColorScheme(.dark)])
    //        }
    //        var html = DocumentRenderer(minify: true).render(doc)
    //        XCTAssertEqual(
    //            #"<source srcset="img.png" media="(prefers-color-scheme: dark)">"#,
    //            html
    //        )
    //
    //        html = DocumentRenderer(minify: true, selfClose: true).render(doc)
    //        XCTAssertEqual(
    //            #"<source srcset="img.png" media="(prefers-color-scheme: dark)" />"#,
    //            html
    //        )
    //    }
    //
}
