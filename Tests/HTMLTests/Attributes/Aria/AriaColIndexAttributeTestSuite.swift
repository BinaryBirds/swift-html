import SGML
import Testing

@testable import HTML

@Suite
struct AriaColIndexAttributeTestSuite {

    @Test
    func rendersAriaColIndexValue() async throws {
        let tag = A {}
            .ariaColIndex("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-colindex="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
