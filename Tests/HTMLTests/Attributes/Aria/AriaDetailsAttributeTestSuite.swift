import SGML
import Testing

@testable import HTML

@Suite
struct AriaDetailsAttributeTestSuite {

    @Test
    func rendersAriaDetailsValue() async throws {
        let tag = A {}
            .ariaDetails("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-details="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
