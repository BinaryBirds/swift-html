import SGML
import Testing

@testable import HTML

@Suite
struct HiddenAttributeTestSuite {

    @Test
    func rendersHiddenValue() async throws {
        let tag = A {}
            .hidden()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a hidden></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
