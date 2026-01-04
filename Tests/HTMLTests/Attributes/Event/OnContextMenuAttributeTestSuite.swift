import SGML
import Testing

@testable import HTML

@Suite
struct OnContextMenuAttributeTestSuite {

    @Test
    func rendersOnContextMenuValue() async throws {
        let tag = A {}
            .onContextMenu("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oncontextmenu="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
