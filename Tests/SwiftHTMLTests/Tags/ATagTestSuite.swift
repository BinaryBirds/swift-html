import Testing

@testable import SwiftHTML

@Suite
struct ATagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = H1("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h1>Lorem ipsum</h1>
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
