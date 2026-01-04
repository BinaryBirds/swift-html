import SGML
import Testing

@testable import HTML

@Suite
struct LoopAttributeTestSuite {

    @Test
    func rendersLoopValue() async throws {
        let tag = Audio {}
            .loop()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio loop></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
