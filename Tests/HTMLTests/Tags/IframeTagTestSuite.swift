import SGML
import Testing

@testable import HTML

@Suite
struct IframeTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Iframe {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <iframe></iframe>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
