import SGML
import Testing

@testable import HTML

@Suite
struct OnDragLeaveAttributeTestSuite {

    @Test
    func rendersOnDragLeaveValue() async throws {
        let tag = A {}
            .onDragLeave("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondragleave="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
