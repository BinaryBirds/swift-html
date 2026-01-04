import SGML
import Testing

@testable import HTML

@Suite
struct AriaExpandedAttributeTestSuite {

    @Test
    func rendersAriaExpandedValue() async throws {
        let tag = A {}
            .ariaExpanded("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-expanded="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
