import SGML
import Testing

@testable import HTML

@Suite
struct NoModuleAttributeTestSuite {

    @Test
    func rendersNoModuleValue() async throws {
        let tag = Script("content")
            .noModule()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script nomodule>content</script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
