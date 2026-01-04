import SGML
import Testing

@testable import HTML

@Suite
struct ColsAttributeTestSuite {

    @Test
    func rendersColsValue() async throws {
        let tag = Textarea {}
            .cols(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <textarea cols="2"></textarea>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
