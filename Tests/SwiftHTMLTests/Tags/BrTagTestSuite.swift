import SGML
import SwiftHTML
import Testing

@Suite
struct BrTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Br()

        let renderer = Renderer()
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <br>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
