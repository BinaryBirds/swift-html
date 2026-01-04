import SGML
import Testing

@testable import HTML

@Suite
struct AriaOrientationAttributeTestSuite {

    @Test
    func rendersAriaOrientationValue() async throws {
        let tag = A {}
            .ariaOrientation("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-orientation="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
