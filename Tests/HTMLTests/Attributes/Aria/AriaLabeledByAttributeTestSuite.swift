import SGML
import Testing

@testable import HTML

@Suite
struct AriaLabeledByAttributeTestSuite {

    @Test
    func rendersAriaLabeledByValue() async throws {
        let tag = A {}
            .ariaLabeledBy("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-labeledby="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
