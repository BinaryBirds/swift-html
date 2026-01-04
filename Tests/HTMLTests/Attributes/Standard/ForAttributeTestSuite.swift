import SGML
import Testing

@testable import HTML

@Suite
struct ForAttributeTestSuite {

    @Test
    func rendersForValue() async throws {
        let tag = Label {}
            .`for`("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <label for="value"></label>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
