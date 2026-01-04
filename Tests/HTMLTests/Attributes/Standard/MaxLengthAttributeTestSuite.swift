import SGML
import Testing

@testable import HTML

@Suite
struct MaxLengthAttributeTestSuite {

    @Test
    func rendersMaxLengthValue() async throws {
        let tag = Input()
            .maxLength(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input maxlength="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
