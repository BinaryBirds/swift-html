import SGML
import Testing

@testable import HTML

@Suite
struct AriaValueMaxAttributeTestSuite {

    @Test
    func rendersAriaValueMaxValue() async throws {
        let tag = A {}
            .ariaValueMax("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-valuemax="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
