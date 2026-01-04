import SGML
import Testing

@testable import HTML

@Suite
struct OnMouseEnterAttributeTestSuite {

    @Test
    func rendersOnMouseEnterValue() async throws {
        let tag = A {}
            .onMouseEnter("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmouseenter="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
