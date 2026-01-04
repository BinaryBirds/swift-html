import SGML
import Testing

@testable import HTML

@Suite
struct ReversedAttributeTestSuite {

    @Test
    func rendersReversedValue() async throws {
        let tag = Ol {}
            .reversed("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ol reversed="value"></ol>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
