import SGML
import Testing

@testable import HTML

@Suite
struct OnWaitingAttributeTestSuite {

    @Test
    func rendersOnWaitingValue() async throws {
        let tag = A {}
            .onWaiting("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onwaiting="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
