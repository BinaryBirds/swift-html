import SGML
import Testing

@testable import HTML

@Suite
struct LiTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Li("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <li></li>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
