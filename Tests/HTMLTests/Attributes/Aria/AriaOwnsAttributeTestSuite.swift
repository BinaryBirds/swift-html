import SGML
import Testing

@testable import HTML

@Suite
struct AriaOwnsAttributeTestSuite {

    @Test
    func rendersAriaOwnsValue() async throws {
        let tag = A {}
            .ariaOwns("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-owns="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
