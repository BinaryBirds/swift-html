import SGML
import Testing

@testable import HTML

@Suite
struct AllowAttributeTestSuite {

    @Test
    func rendersAllowValue() async throws {
        let tag = Iframe {}
            .allow("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <iframe allow="value"></iframe>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
