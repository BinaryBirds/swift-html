import SGML
import Testing

@testable import HTML

@Suite
struct EmTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Em("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <em>hello</em>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
