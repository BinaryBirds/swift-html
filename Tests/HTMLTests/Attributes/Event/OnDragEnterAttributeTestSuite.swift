import SGML
import Testing

@testable import HTML

@Suite
struct OnDragEnterAttributeTestSuite {

    @Test
    func rendersOnDragEnterValue() async throws {
        let tag = A {}
            .onDragEnter("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondragenter="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
