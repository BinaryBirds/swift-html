import SGML
import Testing

@testable import HTML

@Suite
struct OnPageShowAttributeTestSuite {

    @Test
    func rendersOnPageShowValue() async throws {
        let tag = A {}
            .onPageShow("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpageshow="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
