import SGML
import Testing

@testable import HTML

@Suite
struct CodeTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Code("console.log();")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <code>console.log();</code>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
