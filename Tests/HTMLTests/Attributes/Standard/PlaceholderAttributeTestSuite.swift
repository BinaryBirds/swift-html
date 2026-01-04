import SGML
import Testing

@testable import HTML

@Suite
struct PlaceholderAttributeTestSuite {

    @Test
    func rendersPlaceholderValue() async throws {
        let tag = Input()
            .placeholder("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input placeholder="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
