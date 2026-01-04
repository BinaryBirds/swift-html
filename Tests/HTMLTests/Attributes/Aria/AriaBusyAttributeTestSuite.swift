import SGML
import Testing

@testable import HTML

@Suite
struct AriaBusyAttributeTestSuite {

    @Test
    func rendersAriaBusyValue() async throws {
        let tag = A {}
            .ariaBusy("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-busy="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
