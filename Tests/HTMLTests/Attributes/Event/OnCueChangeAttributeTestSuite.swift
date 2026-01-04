import SGML
import Testing

@testable import HTML

@Suite
struct OnCueChangeAttributeTestSuite {

    @Test
    func rendersOnCueChangeValue() async throws {
        let tag = A {}
            .onCueChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oncuechange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
