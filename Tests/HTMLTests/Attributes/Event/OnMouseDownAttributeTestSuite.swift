import SGML
import Testing

@testable import HTML

@Suite
struct OnMouseDownAttributeTestSuite {

    @Test
    func rendersOnMouseDownValue() async throws {
        let tag = A {}
            .onMouseDown("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmousedown="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
