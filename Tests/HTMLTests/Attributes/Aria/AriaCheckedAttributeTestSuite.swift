import SGML
import Testing

@testable import HTML

@Suite
struct AriaCheckedAttributeTestSuite {

    @Test
    func rendersAriaCheckedValues() async throws {
        let cases: [(AriaCheckedAttributeValue, String)] = [
            (.false, "false"),
            (.true, "true"),
            (.mixed, "mixed"),
            (.undefined, "undefined"),
        ]

        for (value, raw) in cases {
            let tag = Input()
                .ariaChecked(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <input aria-checked="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
