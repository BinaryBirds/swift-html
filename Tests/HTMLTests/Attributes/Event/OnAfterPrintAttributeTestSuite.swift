import SGML
import Testing

@testable import HTML

@Suite
struct OnAfterPrintAttributeTestSuite {

    @Test
    func rendersOnAfterPrintValue() async throws {
        let tag = A {}
            .onAfterPrint("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onafterprint="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
