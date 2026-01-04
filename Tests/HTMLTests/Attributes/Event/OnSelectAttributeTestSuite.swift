import SGML
import Testing

@testable import HTML

@Suite
struct OnSelectAttributeTestSuite {

    @Test
    func rendersOnSelectValue() async throws {
        let tag = A {}
            .onSelect("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onselect="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
