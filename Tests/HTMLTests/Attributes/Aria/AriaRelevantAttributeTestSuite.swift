import SGML
import Testing

@testable import HTML

@Suite
struct AriaRelevantAttributeTestSuite {

    @Test
    func rendersAriaRelevantValues() async throws {
        let cases: [(AriaRelevantAttributeValue, String)] = [
            (.additions, "additions"),
            (.all, "all"),
            (.removals, "removals"),
            (.text, "text"),
        ]

        for (value, raw) in cases {
            let tag = Div {}
                .ariaRelevant(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <div aria-relevant="\#(raw)"></div>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
