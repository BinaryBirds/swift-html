import SGML
import Testing

@testable import HTML

@Suite
struct OnToggleAttributeTestSuite {

    @Test
    func rendersOnToggleValue() async throws {
        let tag = A {}
            .onToggle("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ontoggle="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
