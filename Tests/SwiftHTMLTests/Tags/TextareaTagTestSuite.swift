import Testing

@testable import SwiftHTML

@Suite
struct TextareaTagTestSuite {

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
    //    func testDisabledTextarea() {
    //
    //        let doc = Document {
    //            Textarea()
    //                .disabled()
    //        }
    //        XCTAssertEqual(
    //            DocumentRenderer(minify: true).render(doc),
    //            #"<textarea disabled></textarea>"#
    //        )
    //    }
    //
}
