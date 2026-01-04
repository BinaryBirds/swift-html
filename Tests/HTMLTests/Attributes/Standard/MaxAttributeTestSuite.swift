import SGML
import Testing

@testable import HTML

@Suite
struct MaxAttributeTestSuite {

    @Test
    func rendersMaxValue() async throws {
        let tag = Input()
            .max(1.5)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input max="1.5">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
