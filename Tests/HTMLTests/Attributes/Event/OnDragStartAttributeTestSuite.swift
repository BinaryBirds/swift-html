import SGML
import Testing

@testable import HTML

@Suite
struct OnDragStartAttributeTestSuite {

    @Test
    func rendersOnDragStartValue() async throws {
        let tag = A {}
            .onDragStart("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondragstart="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
