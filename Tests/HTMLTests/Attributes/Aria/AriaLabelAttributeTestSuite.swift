import SGML
import Testing

@testable import HTML

@Suite
struct AriaLabelAttributeTestSuite {

    @Test
    func rendersAriaLabelValue() async throws {
        let tag = A {}
            .ariaLabel("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-label="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
