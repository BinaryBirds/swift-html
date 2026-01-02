import SGML
import Testing

@testable import HTML

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

    @Test
    func initializationWithChildren() async throws {
        let isRequired = true

        let tag = Label {
            Text("foo")
            Span("(bar)").class("more")
            if isRequired {
                Span("*").class("required")
            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <label>foo<span class="more">(bar)</span><span class="required">*</span></label>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
