import SGML
import Testing

@testable import HTML

@Suite
struct AriaRowCountAttributeTestSuite {

    @Test
    func rendersAriaRowCountValue() async throws {
        let tag = A {}
            .ariaRowCount("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-rowcount="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
