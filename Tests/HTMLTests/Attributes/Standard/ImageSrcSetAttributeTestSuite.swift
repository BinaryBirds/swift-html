import SGML
import Testing

@testable import HTML

@Suite
struct ImageSrcSetAttributeTestSuite {

    @Test
    func rendersImageSrcSetValue() async throws {
        let tag = Link(rel: .stylesheet)
            .imageSrcSet("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" imagesrcset="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
