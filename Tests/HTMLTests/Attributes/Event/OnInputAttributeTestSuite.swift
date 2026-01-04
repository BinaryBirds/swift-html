import SGML
import Testing

@testable import HTML

@Suite
struct OnInputAttributeTestSuite {

    @Test
    func rendersOnInputValue() async throws {
        let tag = A {}
            .onInput("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oninput="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
