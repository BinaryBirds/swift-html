import SGML
import Testing

@testable import HTML

@Suite
struct OnOnlineAttributeTestSuite {

    @Test
    func rendersOnOnlineValue() async throws {
        let tag = A {}
            .onOnline("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ononline="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
