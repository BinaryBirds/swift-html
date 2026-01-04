import SGML
import Testing

@testable import HTML

@Suite
struct ValueAttributeTestSuite {

    @Test
    func rendersValueValue() async throws {
        let tag = Button {}
            .value("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button value="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
