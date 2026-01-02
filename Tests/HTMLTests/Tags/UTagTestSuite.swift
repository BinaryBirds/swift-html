import SGML
import Testing

@testable import HTML

@Suite
struct UTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = U("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <u>hello</u>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
