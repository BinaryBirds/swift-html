import SGML
import Testing

@testable import HTML

@Suite
struct CoordsAttributeTestSuite {

    @Test
    func rendersCoordsValue() async throws {
        let tag = Area()
            .coords("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area coords="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
