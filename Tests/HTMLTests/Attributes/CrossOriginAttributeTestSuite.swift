import SGML
import Testing

@testable import HTML

@Suite
struct CrossOriginAttributeTestSuite {

    @Test
    func rendersCrossOriginValues() async throws {
        let cases: [(CrossOriginAttributeValue, String)] = [
            (.anonymous, "anonymous"),
            (.useCredentials, "use-credentials")
        ]

        for (value, raw) in cases {
            let tag = Img()
                .crossOrigin(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <img crossorigin="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
