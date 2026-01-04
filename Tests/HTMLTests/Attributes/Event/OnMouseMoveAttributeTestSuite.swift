import SGML
import Testing

@testable import HTML

@Suite
struct OnMouseMoveAttributeTestSuite {

    @Test
    func rendersOnMouseMoveValue() async throws {
        let tag = A {}
            .onMouseMove("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmousemove="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
