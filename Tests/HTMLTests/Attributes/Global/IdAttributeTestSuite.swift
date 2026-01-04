import SGML
import Testing

@testable import HTML

@Suite
struct IdAttributeTestSuite {

    @Test
    func rendersIdValue() async throws {
        let tag = A {}
            .id("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a id="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
