import SGML
import Testing

@testable import HTML

@Suite
struct OnBeforePrintAttributeTestSuite {

    @Test
    func rendersOnBeforePrintValue() async throws {
        let tag = A {}
            .onBeforePrint("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onbeforeprint="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
