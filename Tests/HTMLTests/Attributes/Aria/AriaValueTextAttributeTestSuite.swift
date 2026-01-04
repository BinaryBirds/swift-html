import SGML
import Testing

@testable import HTML

@Suite
struct AriaValueTextAttributeTestSuite {

    @Test
    func rendersAriaValueTextValue() async throws {
        let tag = A {}
            .ariaValueText("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-valuetext="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
