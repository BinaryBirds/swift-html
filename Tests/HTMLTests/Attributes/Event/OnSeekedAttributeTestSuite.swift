import SGML
import Testing

@testable import HTML

@Suite
struct OnSeekedAttributeTestSuite {

    @Test
    func rendersOnSeekedValue() async throws {
        let tag = A {}
            .onSeeked("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onseeked="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
