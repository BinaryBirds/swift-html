import SGML
import Testing

@testable import HTML

@Suite
struct AriaLevelAttributeTestSuite {

    @Test
    func rendersAriaLevelValue() async throws {
        let tag = A {}
            .ariaLevel("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-level="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
