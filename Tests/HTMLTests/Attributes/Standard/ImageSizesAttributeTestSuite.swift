import SGML
import Testing

@testable import HTML

@Suite
struct ImageSizesAttributeTestSuite {

    @Test
    func rendersImageSizesValue() async throws {
        let tag = Link(rel: .stylesheet)
            .imageSizes("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <link rel="stylesheet" imagesizes="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
