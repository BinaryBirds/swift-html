import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerUpAttributeTestSuite {

    @Test
    func rendersOnPointerUpValue() async throws {
        let tag = A {}
            .onPointerUp("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerup="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
