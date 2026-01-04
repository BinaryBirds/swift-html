import SGML
import Testing

@testable import HTML

@Suite
struct ItemRefAttributeTestSuite {

    @Test
    func rendersItemRefValue() async throws {
        let tag = A {}
            .itemRef("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a itemref="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
