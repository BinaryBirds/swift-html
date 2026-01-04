import SGML
import Testing

@testable import HTML

@Suite
struct ItemPropAttributeTestSuite {

    @Test
    func rendersItemPropValue() async throws {
        let tag = A {}
            .itemProp("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a itemprop="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
