import SGML
import Testing

@testable import HTML

@Suite
struct SrcAttributeTestSuite {

    @Test
    func rendersSrcValue() async throws {
        let tag = Audio {}
            .src("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio src="value"></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
