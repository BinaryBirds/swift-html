import SGML
import Testing

@testable import HTML

@Suite
struct TextareaTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Textarea("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <textarea></textarea>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func disabledModifier() async throws {
        let tag = Textarea("")
            .disabled()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <textarea disabled></textarea>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
