import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerEnterAttributeTestSuite {

    @Test
    func rendersOnPointerEnterValue() async throws {
        let tag = A {}
            .onPointerEnter("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerenter="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
