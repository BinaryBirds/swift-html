import SGML
import Testing

@testable import HTML

@Suite
struct AriaDescribedByAttributeTestSuite {

    @Test
    func rendersAriaDescribedByValue() async throws {
        let tag = A {}
            .ariaDescribedBy("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-describedby="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
