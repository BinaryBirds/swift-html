import SGML
import Testing

@testable import HTML

@Suite
struct AsAttributeTestSuite {

    @Test
    func rendersAsValue() async throws {
        let tag = Link(rel: .stylesheet)
            .as("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" as="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
