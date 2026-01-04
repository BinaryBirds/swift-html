import SGML
import Testing

@testable import HTML

@Suite
struct AsyncAttributeTestSuite {

    @Test
    func rendersAsyncValue() async throws {
        let tag = Script("content")
            .`async`()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script async>content</script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
