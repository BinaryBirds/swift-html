import SGML
import Testing

@testable import HTML

@Suite
struct RowsAttributeTestSuite {

    @Test
    func rendersRowsValue() async throws {
        let tag = Textarea {}
            .rows(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <textarea rows="2"></textarea>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
