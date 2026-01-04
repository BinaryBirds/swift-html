import SGML
import Testing

@testable import HTML

@Suite
struct AllowFullscreenAttributeTestSuite {

    @Test
    func rendersAllowFullscreenValue() async throws {
        let tag = Iframe {}
            .allowFullscreen("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <iframe allowfullscreen="value"></iframe>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
