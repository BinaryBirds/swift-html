import SGML
import Testing

@testable import HTML

@Suite
struct DeferAttributeTestSuite {

    @Test
    func rendersDeferValue() async throws {
        let tag = Script("content")
            .`defer`()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script defer>content</script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
