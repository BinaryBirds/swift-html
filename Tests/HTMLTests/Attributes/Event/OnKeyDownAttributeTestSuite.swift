import SGML
import Testing

@testable import HTML

@Suite
struct OnKeyDownAttributeTestSuite {

    @Test
    func rendersOnKeyDownValue() async throws {
        let tag = A {}
            .onKeyDown("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onkeydown="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
