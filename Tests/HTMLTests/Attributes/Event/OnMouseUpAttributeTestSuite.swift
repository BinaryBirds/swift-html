import SGML
import Testing

@testable import HTML

@Suite
struct OnMouseUpAttributeTestSuite {

    @Test
    func rendersOnMouseUpValue() async throws {
        let tag = A {}
            .onMouseUp("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmouseup="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
