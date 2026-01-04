import SGML
import Testing

@testable import HTML

@Suite
struct ColorAttributeTestSuite {

    @Test
    func rendersColorValue() async throws {
        let tag = Link(rel: .stylesheet)
            .color("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" color="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
