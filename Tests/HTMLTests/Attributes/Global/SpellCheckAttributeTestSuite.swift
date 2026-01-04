import SGML
import Testing

@testable import HTML

@Suite
struct SpellCheckAttributeTestSuite {

    @Test
    func rendersSpellCheckValue() async throws {
        let tag = A {}
            .spellCheck(true)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a spellcheck="true"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
