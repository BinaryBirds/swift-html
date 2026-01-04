import SGML
import Testing

@testable import HTML

@Suite
struct OnAbortAttributeTestSuite {

    @Test
    func rendersOnAbortValue() async throws {
        let tag = A {}
            .onAbort("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onabort="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
