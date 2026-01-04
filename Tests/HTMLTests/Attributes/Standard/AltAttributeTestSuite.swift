import SGML
import Testing

@testable import HTML

@Suite
struct AltAttributeTestSuite {

    @Test
    func rendersAltValue() async throws {
        let tag = Area()
            .alt("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area alt="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
