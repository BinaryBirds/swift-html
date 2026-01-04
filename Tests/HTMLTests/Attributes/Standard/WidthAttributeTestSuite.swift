import SGML
import Testing

@testable import HTML

@Suite
struct WidthAttributeTestSuite {

    @Test
    func rendersWidthValue() async throws {
        let tag = Canvas {}
            .width(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <canvas width="2"></canvas>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
