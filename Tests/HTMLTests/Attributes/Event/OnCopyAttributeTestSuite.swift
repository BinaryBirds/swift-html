import SGML
import Testing

@testable import HTML

@Suite
struct OnCopyAttributeTestSuite {

    @Test
    func rendersOnCopyValue() async throws {
        let tag = A {}
            .onCopy("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oncopy="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
