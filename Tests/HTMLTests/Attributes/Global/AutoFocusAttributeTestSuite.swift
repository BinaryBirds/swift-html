import SGML
import Testing

@testable import HTML

@Suite
struct AutoFocusAttributeTestSuite {

    @Test
    func rendersAutoFocusValue() async throws {
        let tag = A {}
            .autoFocus()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a autofocus></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
