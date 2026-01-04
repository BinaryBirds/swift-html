import SGML
import Testing

@testable import HTML

@Suite
struct CharsetAttributeTestSuite {

    @Test
    func rendersCharsetValue() async throws {
        let tag = Meta()
            .charset("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meta charset="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
