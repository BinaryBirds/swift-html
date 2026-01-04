import SGML
import Testing

@testable import HTML

@Suite
struct PreloadAttributeTestSuite {

    @Test
    func rendersPreloadValues() async throws {
        let cases: [(PreloadAttributeValue, String)] = [
            (.auto, "auto"),
            (.metadata, "metadata"),
            (.none, "none"),
        ]

        for (value, raw) in cases {
            let tag = Audio {}
                .preload(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <audio preload="\#(raw)"></audio>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
