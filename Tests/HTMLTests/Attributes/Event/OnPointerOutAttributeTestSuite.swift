import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerOutAttributeTestSuite {

    @Test
    func rendersOnPointerOutValue() async throws {
        let tag = A {}
            .onPointerOut("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerout="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
