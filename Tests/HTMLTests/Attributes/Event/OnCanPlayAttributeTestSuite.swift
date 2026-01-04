import SGML
import Testing

@testable import HTML

@Suite
struct OnCanPlayAttributeTestSuite {

    @Test
    func rendersOnCanPlayValue() async throws {
        let tag = A {}
            .onCanPlay("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oncanplay="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
