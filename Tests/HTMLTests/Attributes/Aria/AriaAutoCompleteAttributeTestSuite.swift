import SGML
import Testing

@testable import HTML

@Suite
struct AriaAutoCompleteAttributeTestSuite {

    @Test
    func rendersAriaAutoCompleteValues() async throws {
        let cases: [(AriaAutoCompleteAttributeValue, String)] = [
            (.none, "none"),
            (.inline, "inline"),
            (.list, "list"),
            (.both, "both"),
        ]

        for (value, raw) in cases {
            let tag = Input()
                .ariaAutoComplete(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <input aria-autocomplete="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
