import SGML
import Testing

@testable import HTML

@Suite
struct OnHashChangeAttributeTestSuite {

    @Test
    func rendersOnHashChangeValue() async throws {
        let tag = A {}
            .onHashChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onhashchange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
