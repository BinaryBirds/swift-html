import SGML
import Testing

@testable import HTML

@Suite
struct AutoCapitalizeAttributeTestSuite {

    @Test
    func rendersAutoCapitalizeValues() async throws {
        let cases: [(AutoCapitalizeAttributeValue, String)] = [
            (.off, "off"),
            (.none, "none"),
            (.on, "on"),
            (.sentences, "sentences"),
            (.words, "words"),
            (.characters, "characters"),
        ]

        for (value, raw) in cases {
            let tag = P("lorem")
                .autoCapitalize(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <p autocapitalize="\#(raw)">lorem</p>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
