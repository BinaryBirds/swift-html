import SGML
import Testing

@testable import HTML

@Suite
struct OnMessageAttributeTestSuite {

    @Test
    func rendersOnMessageValue() async throws {
        let tag = A {}
            .onMessage("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmessage="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
