import SGML
import Testing

@testable import HTML

@Suite
struct OnSeekingAttributeTestSuite {

    @Test
    func rendersOnSeekingValue() async throws {
        let tag = A {}
            .onSeeking("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onseeking="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
