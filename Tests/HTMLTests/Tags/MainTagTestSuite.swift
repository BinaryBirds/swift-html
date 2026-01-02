import SGML
import Testing

@testable import HTML

@Suite
struct MainTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Main {
            P("foo")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <main><p>foo</p></main>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
