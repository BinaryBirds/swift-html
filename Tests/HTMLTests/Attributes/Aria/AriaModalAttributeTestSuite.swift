import SGML
import Testing

@testable import HTML

@Suite
struct AriaModalAttributeTestSuite {

    @Test
    func rendersAriaModalValue() async throws {
        let tag = A {}
            .ariaModal("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-modal="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
