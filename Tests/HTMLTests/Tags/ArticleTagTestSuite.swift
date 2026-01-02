import SGML
import Testing

@testable import HTML

@Suite
struct ArticleTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Article {
            Text("Lorem ipsum.")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <article>Lorem ipsum.</article>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
