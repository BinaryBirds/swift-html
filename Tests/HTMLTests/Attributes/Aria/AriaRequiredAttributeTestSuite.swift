import SGML
import Testing

@testable import HTML

@Suite
struct AriaRequiredAttributeTestSuite {

    @Test
    func rendersAriaRequiredValue() async throws {
        let tag = A {}
            .ariaRequired("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-required="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
