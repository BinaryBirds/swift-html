import SGML
import Testing

@testable import HTML

@Suite
struct ContentAttributeTestSuite {

    @Test
    func rendersContentValue() async throws {
        let tag = Meta()
            .content("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meta content="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
