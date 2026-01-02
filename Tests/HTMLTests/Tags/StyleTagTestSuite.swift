import SGML
import Testing

@testable import HTML

@Suite
struct StyleTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Style("body { color: red; }")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <style>body { color: red; }</style>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
