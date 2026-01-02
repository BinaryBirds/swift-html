import SGML
import Testing

@testable import HTML

@Suite
struct TitleTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Title("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <title>foo</title>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
