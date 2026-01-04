import SGML
import Testing

@testable import HTML

@Suite
struct DraggableAttributeTestSuite {

    @Test
    func rendersDraggableValue() async throws {
        let tag = A {}
            .draggable("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a draggable="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
