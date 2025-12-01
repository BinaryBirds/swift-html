import Testing

@testable import SwiftHTML

@Suite
struct PTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = P("Lorem ipsum")
            .setClass("foo")
            .addClass("bar")
        //            .addChild(Comment("foo"))

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="bar foo">Lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
    // @Test
    //    func testParagraph() {
    //        let tag = P("Hello, world!")
    //
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(Document { tag }),
    //            #"<p>Hello, world!</p>"#
    //        )
    //    }
    // @Test
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
