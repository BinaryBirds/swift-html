import SGML
import Testing

@testable import HTML

@Suite
struct WbrTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Wbr()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <wbr>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
