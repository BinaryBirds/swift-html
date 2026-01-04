import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerLeaveAttributeTestSuite {

    @Test
    func rendersOnPointerLeaveValue() async throws {
        let tag = A {}
            .onPointerLeave("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerleave="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
