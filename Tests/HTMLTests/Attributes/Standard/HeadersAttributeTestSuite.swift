import SGML
import Testing

@testable import HTML

@Suite
struct HeadersAttributeTestSuite {

    @Test
    func rendersHeadersValue() async throws {
        let tag = Td {}
            .headers("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <td headers="value"></td>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
