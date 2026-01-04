import SGML
import Testing

@testable import HTML

@Suite
struct AutoCorrectAttributeTestSuite {

    @Test
    func rendersAutoCorrectValue() async throws {
        let tag = A {}
            .autoCorrect("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a autocorrect="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
