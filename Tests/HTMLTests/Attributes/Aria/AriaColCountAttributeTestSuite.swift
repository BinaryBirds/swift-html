import SGML
import Testing

@testable import HTML

@Suite
struct AriaColCountAttributeTestSuite {

    @Test
    func rendersAriaColCountValue() async throws {
        let tag = A {}
            .ariaColCount("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-colcount="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
