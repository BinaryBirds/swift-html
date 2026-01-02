import SGML
import Testing

@testable import HTML

@Suite
struct SubTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Sub("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <sub>foo</sub>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
