import SGML
import Testing

@testable import HTML

@Suite
struct OnMouseLeaveAttributeTestSuite {

    @Test
    func rendersOnMouseLeaveValue() async throws {
        let tag = A {}
            .onMouseLeave("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmouseleave="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
