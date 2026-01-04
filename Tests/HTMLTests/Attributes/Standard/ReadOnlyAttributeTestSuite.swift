import SGML
import Testing

@testable import HTML

@Suite
struct ReadOnlyAttributeTestSuite {

    @Test
    func rendersReadOnlyValue() async throws {
        let tag = Input()
            .readOnly()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input readonly>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
