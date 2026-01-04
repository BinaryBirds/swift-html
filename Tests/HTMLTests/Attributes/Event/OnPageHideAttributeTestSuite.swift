import SGML
import Testing

@testable import HTML

@Suite
struct OnPageHideAttributeTestSuite {

    @Test
    func rendersOnPageHideValue() async throws {
        let tag = A {}
            .onPageHide("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpagehide="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
