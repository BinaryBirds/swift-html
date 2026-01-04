import SGML
import Testing

@testable import HTML

@Suite
struct SlotAttributeTestSuite {

    @Test
    func rendersSlotValue() async throws {
        let tag = A {}
            .slot("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a slot="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
