import SGML
import Testing

@testable import HTML

@Suite
struct AriaInvalidAttributeTestSuite {

    @Test
    func rendersAriaInvalidValues() async throws {
        let cases: [(AriaInvalidAttributeValue, String)] = [
            (.grammar, "grammar"),
            (.false, "false"),
            (.spelling, "spelling"),
            (.true, "true"),
        ]

        for (value, raw) in cases {
            let tag = Input()
                .ariaInvalid(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <input aria-invalid="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
