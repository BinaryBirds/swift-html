import SGML
import Testing

@testable import HTML

@Suite
struct RequiredAttributeTestSuite {

    @Test
    func rendersRequiredValue() async throws {
        let tag = Input()
            .required()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input required>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
