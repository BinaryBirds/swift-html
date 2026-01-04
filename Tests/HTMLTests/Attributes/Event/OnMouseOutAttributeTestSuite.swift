import SGML
import Testing

@testable import HTML

@Suite
struct OnMouseOutAttributeTestSuite {

    @Test
    func rendersOnMouseOutValue() async throws {
        let tag = A {}
            .onMouseOut("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmouseout="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
