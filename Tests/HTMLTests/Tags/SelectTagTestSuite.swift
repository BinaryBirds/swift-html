import SGML
import Testing

@testable import HTML

@Suite
struct SelectTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Select("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <select></select>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
