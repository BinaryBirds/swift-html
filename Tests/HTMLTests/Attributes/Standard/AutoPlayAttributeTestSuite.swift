import SGML
import Testing

@testable import HTML

@Suite
struct AutoPlayAttributeTestSuite {

    @Test
    func rendersAutoPlayValue() async throws {
        let tag = Audio {}
            .autoPlay()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio autoplay></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
