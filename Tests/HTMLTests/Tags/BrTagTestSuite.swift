import SGML
import Testing

@testable import HTML

@Suite
struct BrTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Br()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <br>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
