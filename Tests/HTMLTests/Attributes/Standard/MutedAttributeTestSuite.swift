import SGML
import Testing

@testable import HTML

@Suite
struct MutedAttributeTestSuite {

    @Test
    func rendersMutedValue() async throws {
        let tag = Audio {}
            .muted()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio muted></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
