import Testing

@testable import SwiftHTML

@Suite
struct TextareaTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Textarea("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <textarea></textarea>
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
