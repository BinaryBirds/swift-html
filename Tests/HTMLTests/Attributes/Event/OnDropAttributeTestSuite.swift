import SGML
import Testing

@testable import HTML

@Suite
struct OnDropAttributeTestSuite {

    @Test
    func rendersOnDropValue() async throws {
        let tag = A {}
            .onDrop("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondrop="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
