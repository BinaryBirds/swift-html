import SGML
import Testing

@testable import HTML

@Suite
struct CheckedAttributeTestSuite {

    @Test
    func rendersCheckedValue() async throws {
        let tag = Input()
            .checked()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input checked>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
