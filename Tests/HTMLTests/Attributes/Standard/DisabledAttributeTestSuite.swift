import SGML
import Testing

@testable import HTML

@Suite
struct DisabledAttributeTestSuite {

    @Test
    func rendersDisabledValue() async throws {
        let tag = Button {}
            .disabled()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button disabled></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
