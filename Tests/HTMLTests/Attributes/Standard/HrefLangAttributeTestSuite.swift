import SGML
import Testing

@testable import HTML

@Suite
struct HrefLangAttributeTestSuite {

    @Test
    func rendersHrefLangValue() async throws {
        let tag = A {}
            .hrefLang("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a hreflang="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
