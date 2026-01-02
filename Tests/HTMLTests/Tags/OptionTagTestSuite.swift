import SGML
import Testing

@testable import HTML

@Suite
struct OptionTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Option("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <option>foo</option>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
