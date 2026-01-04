import SGML
import Testing

@testable import HTML

@Suite
struct PosterAttributeTestSuite {

    @Test
    func rendersPosterValue() async throws {
        let tag = Video {}
            .poster("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <video poster="value"></video>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
