import SGML
import Testing

@testable import HTML

@Suite
struct ControlsAttributeTestSuite {

    @Test
    func rendersControlsValue() async throws {
        let tag = Audio {}
            .controls()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio controls></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
