import SGML
import Testing

@testable import HTML

@Suite
struct StyleAttributeTestSuite {

    @Test
    func rendersStyleValue() async throws {
        let tag = A {}
            .style("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a style="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
