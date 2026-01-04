import SGML
import Testing

@testable import HTML

@Suite
struct RowSpanAttributeTestSuite {

    @Test
    func rendersRowSpanValue() async throws {
        let tag = Td {}
            .rowSpan(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <td rowspan="2"></td>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
