import SGML
import Testing

@testable import HTML

@Suite
struct OnEndedAttributeTestSuite {

    @Test
    func rendersOnEndedValue() async throws {
        let tag = A {}
            .onEnded("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onended="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
