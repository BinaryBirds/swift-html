import SGML
import Testing

@testable import HTML

@Suite
struct TranslateAttributeTestSuite {

    @Test
    func rendersTranslateValues() async throws {
        let cases: [(TranslateAttributeValue, String)] = [
            (.yes, "yes"),
            (.no, "no"),
        ]

        for (value, raw) in cases {
            let tag = Div {}
                .translate(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <div translate="\#(raw)"></div>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
