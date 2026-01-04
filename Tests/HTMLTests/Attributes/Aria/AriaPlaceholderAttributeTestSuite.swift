import SGML
import Testing

@testable import HTML

@Suite
struct AriaPlaceholderAttributeTestSuite {

    @Test
    func rendersAriaPlaceholderValue() async throws {
        let tag = A {}
            .ariaPlaceholder("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-placeholder="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
