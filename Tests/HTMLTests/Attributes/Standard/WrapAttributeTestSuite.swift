import SGML
import Testing

@testable import HTML

@Suite
struct WrapAttributeTestSuite {

    @Test
    func rendersWrapValues() async throws {
        let cases: [(WrapAttributeValue, String)] = [
            (.soft, "soft"),
            (.hard, "hard"),
        ]

        for (value, raw) in cases {
            let tag = Textarea("content")
                .wrap(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <textarea wrap="\#(raw)">content</textarea>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
