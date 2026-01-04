import SGML
import Testing

@testable import HTML

@Suite
struct CiteAttributeTestSuite {

    @Test
    func rendersCiteValue() async throws {
        let tag = Blockquote {}
            .cite("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <blockquote cite="value"></blockquote>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
