import SGML
import Testing

@testable import HTML

@Suite
struct MinAttributeTestSuite {

    @Test
    func rendersMinValue() async throws {
        let tag = Input()
            .min(1.5)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input min="1.5">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
