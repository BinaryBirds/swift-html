import SGML
import Testing

@testable import HTML

@Suite
struct LangAttributeTestSuite {

    @Test
    func rendersLangValue() async throws {
        let tag = A {}
            .lang("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a lang="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
