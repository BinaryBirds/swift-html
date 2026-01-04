import SGML
import Testing

@testable import HTML

@Suite
struct OnKeyPressAttributeTestSuite {

    @Test
    func rendersOnKeyPressValue() async throws {
        let tag = A {}
            .onKeyPress("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onkeypress="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
