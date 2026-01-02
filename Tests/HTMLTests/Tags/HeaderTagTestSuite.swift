import SGML
import Testing

@testable import HTML

@Suite
struct HeaderTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Header("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <header></header>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
