import SGML
import Testing

@testable import HTML

@Suite
struct SrcDocAttributeTestSuite {

    @Test
    func rendersSrcDocValue() async throws {
        let tag = Iframe {}
            .srcDoc("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <iframe srcdoc="value"></iframe>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
