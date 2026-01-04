import SGML
import Testing

@testable import HTML

@Suite
struct OnBlurAttributeTestSuite {

    @Test
    func rendersOnBlurValue() async throws {
        let tag = A {}
            .onBlur("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onblur="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
