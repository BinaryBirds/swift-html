import SGML
import Testing

@testable import HTML

@Suite
struct BlockingAttributeTestSuite {

    @Test
    func rendersBlockingValues() async throws {
        let cases: [(BlockingAttributeValue, String)] = [
            (.render, "render")
        ]

        for (value, raw) in cases {
            let tag = Script()
                .blocking(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <script blocking="\#(raw)"></script>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
