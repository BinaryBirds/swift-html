import SGML
import Testing

@testable import HTML

@Suite
struct AriaValueNowAttributeTestSuite {

    @Test
    func rendersAriaValueNowValue() async throws {
        let tag = A {}
            .ariaValueNow("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-valuenow="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
