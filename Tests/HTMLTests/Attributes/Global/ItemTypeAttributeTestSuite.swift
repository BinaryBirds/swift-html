import SGML
import Testing

@testable import HTML

@Suite
struct ItemTypeAttributeTestSuite {

    @Test
    func rendersItemTypeValue() async throws {
        let tag = A {}
            .itemType("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a itemtype="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
