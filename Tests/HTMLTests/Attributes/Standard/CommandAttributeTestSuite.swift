import SGML
import Testing

@testable import HTML

@Suite
struct CommandAttributeTestSuite {

    @Test
    func rendersCommandValue() async throws {
        let tag = Button {}
            .command("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button command="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
