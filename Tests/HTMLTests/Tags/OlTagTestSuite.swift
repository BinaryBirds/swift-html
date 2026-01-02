import SGML
import Testing

@testable import HTML

@Suite
struct OlTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Ol("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ol></ol>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
