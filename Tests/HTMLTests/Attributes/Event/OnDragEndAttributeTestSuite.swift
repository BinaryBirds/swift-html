import SGML
import Testing

@testable import HTML

@Suite
struct OnDragEndAttributeTestSuite {

    @Test
    func rendersOnDragEndValue() async throws {
        let tag = A {}
            .onDragEnd("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondragend="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
