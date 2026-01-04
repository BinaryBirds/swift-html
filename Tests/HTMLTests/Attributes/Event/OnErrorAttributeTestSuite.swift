import SGML
import Testing

@testable import HTML

@Suite
struct OnErrorAttributeTestSuite {

    @Test
    func rendersOnErrorValue() async throws {
        let tag = A {}
            .onError("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onerror="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
