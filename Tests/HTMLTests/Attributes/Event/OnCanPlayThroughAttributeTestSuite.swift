import SGML
import Testing

@testable import HTML

@Suite
struct OnCanPlayThroughAttributeTestSuite {

    @Test
    func rendersOnCanPlayThroughValue() async throws {
        let tag = A {}
            .onCanPlayThrough("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oncanplaythrough="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
