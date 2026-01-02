import SGML
import Testing

@testable import HTML

@Suite
struct ProgressTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Progress("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <progress></progress>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
