import SGML
import Testing

@testable import HTML

@Suite
struct SpanTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Span("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <span>foo</span>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
