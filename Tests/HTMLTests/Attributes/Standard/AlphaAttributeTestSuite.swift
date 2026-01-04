import SGML
import Testing

@testable import HTML

@Suite
struct AlphaAttributeTestSuite {

    @Test
    func rendersAlphaValue() async throws {
        let tag = Input()
            .alpha("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input alpha="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
