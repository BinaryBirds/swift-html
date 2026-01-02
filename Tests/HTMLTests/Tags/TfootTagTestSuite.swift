import SGML
import Testing

@testable import HTML

@Suite
struct TfootTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Tfoot("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <tfoot></tfoot>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
