import SGML
import Testing

@testable import HTML

@Suite
struct OnSuspendAttributeTestSuite {

    @Test
    func rendersOnSuspendValue() async throws {
        let tag = A {}
            .onSuspend("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onsuspend="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
