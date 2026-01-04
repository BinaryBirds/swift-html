import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerMoveAttributeTestSuite {

    @Test
    func rendersOnPointerMoveValue() async throws {
        let tag = A {}
            .onPointerMove("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointermove="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
