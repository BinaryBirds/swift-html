import SGML
import Testing

@testable import HTML

@Suite
struct OnLoadedMetadataAttributeTestSuite {

    @Test
    func rendersOnLoadedMetadataValue() async throws {
        let tag = A {}
            .onLoadedMetadata("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onloadedmetadata="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
