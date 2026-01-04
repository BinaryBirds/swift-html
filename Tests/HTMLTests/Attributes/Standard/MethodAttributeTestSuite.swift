import SGML
import Testing

@testable import HTML

@Suite
struct MethodAttributeTestSuite {

    @Test
    func rendersMethodValues() async throws {
        let cases: [(MethodAttributeValue, String)] = [
            (.get, "get"),
            (.post, "post"),
        ]

        for (value, raw) in cases {
            let tag = Form {}
                .method(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <form method="\#(raw)"></form>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
