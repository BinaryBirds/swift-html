import SGML
import Testing

@testable import HTML

@Suite
struct OnMessageErrorAttributeTestSuite {

    @Test
    func rendersOnMessageErrorValue() async throws {
        let tag = A {}
            .onMessageError("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmessageerror="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
