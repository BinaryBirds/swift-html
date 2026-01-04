import SGML
import Testing

@testable import HTML

@Suite
struct OnSelectionChangeAttributeTestSuite {

    @Test
    func rendersOnSelectionChangeValue() async throws {
        let tag = A {}
            .onSelectionChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onselectionchange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
