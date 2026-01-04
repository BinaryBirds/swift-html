import SGML
import Testing

@testable import HTML

@Suite
struct AriaMultiSelectableAttributeTestSuite {

    @Test
    func rendersAriaMultiSelectableValue() async throws {
        let tag = A {}
            .ariaMultiSelectable("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-multiselectable="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
