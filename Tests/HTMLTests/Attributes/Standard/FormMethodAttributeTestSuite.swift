import SGML
import Testing

@testable import HTML

@Suite
struct FormMethodAttributeTestSuite {

    @Test
    func rendersFormMethodValue() async throws {
        let tag = Button {}
            .formMethod(.post)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button formmethod="post"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
