import SGML
import SwiftHTML
import Testing

@Suite
struct PTagTestSuite {

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
    //    func testParagraph() {
    //        let tag = P("Hello, world!")
    //
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(Document { tag }),
    //            #"<p>Hello, world!</p>"#
    //        )
    //    }
    //
    //    func testParagraphWithLink() {
    //        let tag = P {
    //            Text("lorem")
    //            A("Hello, world!")
    //                .href("/")
    //            Text("ipsum")
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(Document { tag }),
    //            #"<p>lorem<a href="/">Hello, world!</a>ipsum</p>"#
    //        )
    //    }
}
