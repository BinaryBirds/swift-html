import SGML
import Testing

@testable import HTML

@Suite
struct AriaSelectedAttributeTestSuite {

    @Test
    func rendersAriaSelectedValues() async throws {
        let cases: [(AriaSelectedAttributeValue, String)] = [
            (.true, "true"),
            (.false, "false"),
            (.undefined, "undefined"),
        ]

        for (value, raw) in cases {
            let tag = Option("item")
                .ariaSelected(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <option aria-selected="\#(raw)">item</option>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
