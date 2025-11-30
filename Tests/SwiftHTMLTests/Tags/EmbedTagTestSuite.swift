import Testing

@testable import SwiftHTML

@Suite
struct EmbedTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Embed()
            .src("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <embed src="foo">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
