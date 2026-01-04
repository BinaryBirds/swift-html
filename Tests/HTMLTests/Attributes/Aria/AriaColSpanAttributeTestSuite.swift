import SGML
import Testing

@testable import HTML

@Suite
struct AriaColSpanAttributeTestSuite {

    @Test
    func rendersAriaColSpanValue() async throws {
        let tag = A {}
            .ariaColSpan("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-colspan="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
