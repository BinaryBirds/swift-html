import SGML
import Testing

@testable import HTML

@Suite
struct OnUnhandledRejectionAttributeTestSuite {

    @Test
    func rendersOnUnhandledRejectionValue() async throws {
        let tag = A {}
            .onUnhandledRejection("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onunhandledrejection="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
