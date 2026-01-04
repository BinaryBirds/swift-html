import SGML
import Testing

@testable import HTML

@Suite
struct IntegrityAttributeTestSuite {

    @Test
    func rendersIntegrityValue() async throws {
        let tag = Link(rel: .stylesheet)
            .integrity("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" integrity="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
