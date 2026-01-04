import SGML
import Testing

@testable import HTML

@Suite
struct OnPauseAttributeTestSuite {

    @Test
    func rendersOnPauseValue() async throws {
        let tag = A {}
            .onPause("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpause="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
