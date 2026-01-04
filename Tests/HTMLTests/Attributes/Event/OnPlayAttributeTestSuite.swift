import SGML
import Testing

@testable import HTML

@Suite
struct OnPlayAttributeTestSuite {

    @Test
    func rendersOnPlayValue() async throws {
        let tag = A {}
            .onPlay("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onplay="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
