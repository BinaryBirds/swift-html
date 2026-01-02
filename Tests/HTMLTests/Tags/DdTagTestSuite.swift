import SGML
import Testing

@testable import HTML

@Suite
struct DdTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dd("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dd></dd>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
