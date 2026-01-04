import SGML
import Testing

@testable import HTML

@Suite
struct HeightAttributeTestSuite {

    @Test
    func rendersHeightValue() async throws {
        let tag = Canvas {}
            .height(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <canvas height="2"></canvas>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
