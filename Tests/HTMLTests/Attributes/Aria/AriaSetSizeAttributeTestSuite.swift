import SGML
import Testing

@testable import HTML

@Suite
struct AriaSetSizeAttributeTestSuite {

    @Test
    func rendersAriaSetSizeValue() async throws {
        let tag = A {}
            .ariaSetSize("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-setsize="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
