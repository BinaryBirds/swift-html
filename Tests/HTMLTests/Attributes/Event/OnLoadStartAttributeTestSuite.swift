import SGML
import Testing

@testable import HTML

@Suite
struct OnLoadStartAttributeTestSuite {

    @Test
    func rendersOnLoadStartValue() async throws {
        let tag = A {}
            .onLoadStart("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onloadstart="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
