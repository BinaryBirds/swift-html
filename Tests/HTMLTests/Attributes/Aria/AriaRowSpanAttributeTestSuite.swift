import SGML
import Testing

@testable import HTML

@Suite
struct AriaRowSpanAttributeTestSuite {

    @Test
    func rendersAriaRowSpanValue() async throws {
        let tag = A {}
            .ariaRowSpan("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-rowspan="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
