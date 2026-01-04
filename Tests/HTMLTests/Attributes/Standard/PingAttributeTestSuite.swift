import SGML
import Testing

@testable import HTML

@Suite
struct PingAttributeTestSuite {

    @Test
    func rendersPingValue() async throws {
        let tag = Area()
            .ping("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area ping="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
