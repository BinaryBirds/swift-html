import SGML
import Testing

@testable import HTML

@Suite
struct ColSpanAttributeTestSuite {

    @Test
    func rendersColSpanValue() async throws {
        let tag = Td {}
            .colSpan(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <td colspan="2"></td>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
