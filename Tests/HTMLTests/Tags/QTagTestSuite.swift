import SGML
import Testing

@testable import HTML

@Suite
struct QTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Q("Lorem ipsum")
            .cite("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <q cite="foo">Lorem ipsum</q>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
