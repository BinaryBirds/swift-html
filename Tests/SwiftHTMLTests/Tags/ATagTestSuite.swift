import Testing

@testable import SwiftHTML

@Suite
struct ATagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = A("link")
            .href("http://localhost/")
            .target(.blank)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a href="http://localhost/" target="_blank">link</a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    //
    //    func testA() {
    //
    //        let doc = Document {
    //            A {
    //                P("Hello")
    //            }
    //            .href("world")
    //        }
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(doc),
    //            #"<a href="world"><p>Hello</p></a>"#
    //        )
    //    }
    //
    //    func testSelfTarget() {
    //        let doc = Document {
    //            A("foo")
    //                .href("bar")
    //                .target(.default)
    //        }
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(doc),
    //            #"<a href="bar" target="_self">foo</a>"#
    //        )
    //    }
}
