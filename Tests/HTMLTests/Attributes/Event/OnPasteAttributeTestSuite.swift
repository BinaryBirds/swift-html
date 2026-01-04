import SGML
import Testing

@testable import HTML

@Suite
struct OnPasteAttributeTestSuite {

    @Test
    func rendersOnPasteValue() async throws {
        let tag = A {}
            .onPaste("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpaste="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
