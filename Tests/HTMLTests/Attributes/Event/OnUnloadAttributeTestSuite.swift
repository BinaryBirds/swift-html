import SGML
import Testing

@testable import HTML

@Suite
struct OnUnloadAttributeTestSuite {

    @Test
    func rendersOnUnloadValue() async throws {
        let tag = A {}
            .onUnload("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onunload="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
