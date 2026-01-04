import SGML
import Testing

@testable import HTML

@Suite
struct OnChangeAttributeTestSuite {

    @Test
    func rendersOnChangeValue() async throws {
        let tag = A {}
            .onChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onchange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
