import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerDownAttributeTestSuite {

    @Test
    func rendersOnPointerDownValue() async throws {
        let tag = A {}
            .onPointerDown("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerdown="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
