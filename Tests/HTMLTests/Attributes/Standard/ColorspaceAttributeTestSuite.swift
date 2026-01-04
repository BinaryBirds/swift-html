import SGML
import Testing

@testable import HTML

@Suite
struct ColorspaceAttributeTestSuite {

    @Test
    func rendersColorspaceValue() async throws {
        let tag = Input()
            .colorspace("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input colorspace="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
