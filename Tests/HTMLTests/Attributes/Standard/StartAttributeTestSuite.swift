import SGML
import Testing

@testable import HTML

@Suite
struct StartAttributeTestSuite {

    @Test
    func rendersStartValue() async throws {
        let tag = Ol {}
            .start(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ol start="2"></ol>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
