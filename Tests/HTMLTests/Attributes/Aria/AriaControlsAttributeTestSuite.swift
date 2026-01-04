import SGML
import Testing

@testable import HTML

@Suite
struct AriaControlsAttributeTestSuite {

    @Test
    func rendersAriaControlsValue() async throws {
        let tag = A {}
            .ariaControls("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-controls="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
