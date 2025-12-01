import Testing

@testable import SwiftHTML

@Suite
struct LabelTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Label("Lorem ipsum")
            .for("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <label for="foo">Lorem ipsum</label>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    // @Test
    //    func testLabelChildrenWithContents() {
    //        let isRequired = true
    //        let doc = Document {
    //            Label {
    //                Span("(bar)").class("more")
    //                if isRequired {
    //                    Span("*").class("required")
    //                }
    //            }
    //            .setContents("foo")
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer().render(doc),
    //            #"""
    //            <label>foo
    //                <span class="more">(bar)</span>
    //                <span class="required">*</span>
    //            </label>
    //            """#
    //        )
    //    }
    //
}
