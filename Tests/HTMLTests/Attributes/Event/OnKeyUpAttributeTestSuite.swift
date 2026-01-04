import SGML
import Testing

@testable import HTML

@Suite
struct OnKeyUpAttributeTestSuite {

    @Test
    func rendersOnKeyUpValue() async throws {
        let tag = A {}
            .onKeyUp("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onkeyup="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
