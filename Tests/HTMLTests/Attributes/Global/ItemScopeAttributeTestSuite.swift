import SGML
import Testing

@testable import HTML

@Suite
struct ItemScopeAttributeTestSuite {

    @Test
    func rendersItemScopeValue() async throws {
        let tag = A {}
            .itemScope()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a itemscope></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
