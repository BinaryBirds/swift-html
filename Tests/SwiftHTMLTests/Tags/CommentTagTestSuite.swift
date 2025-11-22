import SGML
import SwiftHTML
import Testing

@Suite
struct CommentTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Comment("this is a comment")

        let renderer = Renderer()
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <!-- this is a comment -->
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
