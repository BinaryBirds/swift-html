import SGML
import Testing

@testable import HTML

@Suite
struct OnDblClickAttributeTestSuite {

    @Test
    func rendersOnDblClickValue() async throws {
        let tag = A {}
            .onDblClick("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ondblclick="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
