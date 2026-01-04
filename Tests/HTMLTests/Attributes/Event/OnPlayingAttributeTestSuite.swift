import SGML
import Testing

@testable import HTML

@Suite
struct OnPlayingAttributeTestSuite {

    @Test
    func rendersOnPlayingValue() async throws {
        let tag = A {}
            .onPlaying("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onplaying="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
