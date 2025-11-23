import Testing

@testable import SwiftHTML

@Suite
struct SourceTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = H1("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <h1>Lorem ipsum</h1>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
    //
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
