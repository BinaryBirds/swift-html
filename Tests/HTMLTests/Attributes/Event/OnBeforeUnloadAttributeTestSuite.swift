import SGML
import Testing

@testable import HTML

@Suite
struct OnBeforeUnloadAttributeTestSuite {

    @Test
    func rendersOnBeforeUnloadValue() async throws {
        let tag = A {}
            .onBeforeUnload("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onbeforeunload="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
