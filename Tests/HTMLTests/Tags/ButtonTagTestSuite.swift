import SGML
import Testing

@testable import HTML

@Suite
struct ButtonTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Button("Click me")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button>Click me</button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
