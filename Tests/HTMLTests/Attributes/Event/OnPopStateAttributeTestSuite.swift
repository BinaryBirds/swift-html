import SGML
import Testing

@testable import HTML

@Suite
struct OnPopStateAttributeTestSuite {

    @Test
    func rendersOnPopStateValue() async throws {
        let tag = A {}
            .onPopState("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpopstate="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
