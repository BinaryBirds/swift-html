import SGML
import Testing

@testable import HTML

@Suite
struct OnFocusAttributeTestSuite {

    @Test
    func rendersOnFocusValue() async throws {
        let tag = A {}
            .onFocus("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onfocus="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
