import SGML
import Testing

@testable import HTML

@Suite
struct OnStalledAttributeTestSuite {

    @Test
    func rendersOnStalledValue() async throws {
        let tag = A {}
            .onStalled("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onstalled="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
