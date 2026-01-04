import SGML
import Testing

@testable import HTML

@Suite
struct DownloadAttributeTestSuite {

    @Test
    func rendersDownloadValue() async throws {
        let tag = A {}
            .download("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a download="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
