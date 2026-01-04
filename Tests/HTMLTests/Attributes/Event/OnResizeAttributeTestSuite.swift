import SGML
import Testing

@testable import HTML

@Suite
struct OnResizeAttributeTestSuite {

    @Test
    func rendersOnResizeValue() async throws {
        let tag = A {}
            .onResize("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onresize="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
