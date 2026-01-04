import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerCancelAttributeTestSuite {

    @Test
    func rendersOnPointerCancelValue() async throws {
        let tag = A {}
            .onPointerCancel("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointercancel="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
