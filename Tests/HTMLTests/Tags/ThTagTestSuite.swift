import SGML
import Testing

@testable import HTML

@Suite
struct ThTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Th("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <th></th>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
