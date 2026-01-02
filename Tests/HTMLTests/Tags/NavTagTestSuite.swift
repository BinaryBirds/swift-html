import SGML
import Testing

@testable import HTML

@Suite
struct NavTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Nav {

        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <nav></nav>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
