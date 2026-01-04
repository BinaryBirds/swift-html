import SGML
import Testing

@testable import HTML

@Suite
struct AriaPressedAttributeTestSuite {

    @Test
    func rendersAriaPressedValues() async throws {
        let cases: [(AriaPressedAttributeValue, String)] = [
            (.false, "false"),
            (.mixed, "mixed"),
            (.true, "true"),
            (.undefined, "undefined"),
        ]

        for (value, raw) in cases {
            let tag = Button("toggle")
                .ariaPressed(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <button aria-pressed="\#(raw)">toggle</button>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
