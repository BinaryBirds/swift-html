import SGML
import Testing

@testable import HTML

@Suite
struct ListAttributeTestSuite {

    @Test
    func rendersListValue() async throws {
        let tag = Input()
            .list("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input list="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
