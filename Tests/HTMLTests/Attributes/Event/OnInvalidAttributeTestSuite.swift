import SGML
import Testing

@testable import HTML

@Suite
struct OnInvalidAttributeTestSuite {

    @Test
    func rendersOnInvalidValue() async throws {
        let tag = A {}
            .onInvalid("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oninvalid="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
