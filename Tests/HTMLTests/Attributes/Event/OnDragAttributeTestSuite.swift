import SGML
import Testing

@testable import HTML

@Suite
struct OnDragAttributeTestSuite {

    @Test
    func rendersOnDragValue() async throws {
        let tag = A {}
            .onDrag("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondrag="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
