import SGML
import SwiftHTML
import Testing

@Suite
struct LabelTagTestSuite {

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
    //    func testLabelContents() {
    //        let doc = Document {
    //            Label("foo")
    //        }
    //
    //        XCTAssertEqual(
    //            DocumentRenderer().render(doc),
    //            #"""
    //            <label>foo</label>
    //            """#
    //        )
    //    }
    //
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
