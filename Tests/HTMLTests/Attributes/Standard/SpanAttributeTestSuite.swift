import SGML
import Testing

@testable import HTML

@Suite
struct SpanAttributeTestSuite {

    @Test
    func rendersSpanValue() async throws {
        let tag = Col()
            .span(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <col span="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
