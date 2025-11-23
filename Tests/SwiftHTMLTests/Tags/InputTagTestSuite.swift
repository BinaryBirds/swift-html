import Testing

@testable import SwiftHTML

@Suite
struct InputTagTestSuite {

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
    //    func testCheckedInput() {
    //        let doc = Document {
    //            Input()
    //                .type(.checkbox)
    //                .checked()
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer().render(doc),
    //            """
    //            <input type="checkbox" checked>
    //            """
    //        )
    //        XCTAssertEqual(
    //            DocumentRenderer(selfClose: true).render(doc),
    //            """
    //            <input type="checkbox" checked />
    //            """
    //        )
    //    }
    //
    //    func testUncheckedInput() {
    //        let doc = Document {
    //            Input()
    //                .type(.checkbox)
    //                // first add checked attribute
    //                .checked()
    //                // this should remove the checked attribute
    //                .checked(false)
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer().render(doc),
    //            """
    //            <input type="checkbox">
    //            """
    //        )
    //        XCTAssertEqual(
    //            DocumentRenderer(selfClose: true).render(doc),
    //            """
    //            <input type="checkbox" />
    //            """
    //        )
    //    }
    //
    //    func testKey() {
    //        let doc = Document {
    //            Input()
    //                .type(.text)
    //                .key("email")
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer().render(doc),
    //            """
    //            <input type="text" id="email" name="email">
    //            """
    //        )
    //        XCTAssertEqual(
    //            DocumentRenderer(selfClose: true).render(doc),
    //            """
    //            <input type="text" id="email" name="email" />
    //            """
    //        )
    //    }
    //
}
