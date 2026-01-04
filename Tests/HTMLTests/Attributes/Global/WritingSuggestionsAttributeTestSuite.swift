import SGML
import Testing

@testable import HTML

@Suite
struct WritingSuggestionsAttributeTestSuite {

    @Test
    func rendersWritingSuggestionsValue() async throws {
        let tag = A {}
            .writingSuggestions("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a writingsuggestions="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
