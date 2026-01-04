import SGML
import Testing

@testable import HTML

@Suite
struct OnLanguageChangeAttributeTestSuite {

    @Test
    func rendersOnLanguageChangeValue() async throws {
        let tag = A {}
            .onLanguageChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onlanguagechange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
