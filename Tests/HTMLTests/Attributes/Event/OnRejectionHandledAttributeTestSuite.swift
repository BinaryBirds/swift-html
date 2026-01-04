import SGML
import Testing

@testable import HTML

@Suite
struct OnRejectionHandledAttributeTestSuite {

    @Test
    func rendersOnRejectionHandledValue() async throws {
        let tag = A {}
            .onRejectionHandled("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onrejectionhandled="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
