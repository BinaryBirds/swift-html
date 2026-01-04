import SGML
import Testing

@testable import HTML

@Suite
struct FormAttributeTestSuite {

    @Test
    func rendersFormValue() async throws {
        let tag = Button {}
            .form("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button form="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
