import SGML
import Testing

@testable import HTML

@Suite
struct OnCutAttributeTestSuite {

    @Test
    func rendersOnCutValue() async throws {
        let tag = A {}
            .onCut("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oncut="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
