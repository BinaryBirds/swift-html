import SGML
import Testing

@testable import HTML

@Suite
struct OnLoadAttributeTestSuite {

    @Test
    func rendersOnLoadValue() async throws {
        let tag = A {}
            .onLoad("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onload="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
