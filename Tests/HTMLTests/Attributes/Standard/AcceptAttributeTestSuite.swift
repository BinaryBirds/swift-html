import SGML
import Testing

@testable import HTML

@Suite
struct AcceptAttributeTestSuite {

    @Test
    func rendersAcceptValue() async throws {
        let tag = Input()
            .accept("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input accept="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
