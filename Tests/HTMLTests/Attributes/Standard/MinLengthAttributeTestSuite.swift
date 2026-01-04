import SGML
import Testing

@testable import HTML

@Suite
struct MinLengthAttributeTestSuite {

    @Test
    func rendersMinLengthValue() async throws {
        let tag = Input()
            .minLength(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input minlength="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
