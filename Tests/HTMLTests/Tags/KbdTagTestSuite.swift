import SGML
import Testing

@testable import HTML

@Suite
struct KbdTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Kbd("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <kbd>hello</kbd>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
