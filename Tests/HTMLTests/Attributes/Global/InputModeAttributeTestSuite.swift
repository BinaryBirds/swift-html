import SGML
import Testing

@testable import HTML

@Suite
struct InputModeAttributeTestSuite {

    @Test
    func rendersInputModeValues() async throws {
        let cases: [(InputModeAttributeValue, String)] = [
            (.none, "none"),
            (.text, "text"),
            (.tel, "tel"),
            (.url, "url"),
            (.email, "email"),
            (.numeric, "numeric"),
            (.decimal, "decimal"),
            (.search, "search"),
        ]

        for (value, raw) in cases {
            let tag = Input()
                .inputMode(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <input inputmode="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
