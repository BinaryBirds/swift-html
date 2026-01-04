import SGML
import Testing

@testable import HTML

@Suite
struct PatternAttributeTestSuite {

    @Test
    func rendersPatternValue() async throws {
        let tag = Input()
            .pattern("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input pattern="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
