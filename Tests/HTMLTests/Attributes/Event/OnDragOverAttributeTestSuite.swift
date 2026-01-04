import SGML
import Testing

@testable import HTML

@Suite
struct OnDragOverAttributeTestSuite {

    @Test
    func rendersOnDragOverValue() async throws {
        let tag = A {}
            .onDragOver("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondragover="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
