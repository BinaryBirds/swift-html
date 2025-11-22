import SGML
import SwiftHTML
import Testing

@Suite
struct H1TagTestSuite {

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

    @Test
    func initializationWithChildren() async throws {
        let tag = H1 {
            Br()
        }

        let renderer = Renderer()
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <h1><br></h1>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    //    func testInitWithTag() {
    //        let doc = Document {
    //            H1 {
    //                A("foo")
    //                    .id("bar")
    //            }
    //        }
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(doc),
    //            #"<h1><a id="bar">foo</a></h1>"#
    //        )
    //    }

    //    func testInitWithChildren() {
    //        let doc = Document {
    //            H1([
    //                A("foo")
    //            ])
    //        }
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(doc),
    //            #"<h1><a>foo</a></h1>"#
    //        )
    //    }
    //
    //}
}
