import SGML
import Testing

@testable import HTML

@Suite
struct HeadTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Head {

        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <head></head>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
