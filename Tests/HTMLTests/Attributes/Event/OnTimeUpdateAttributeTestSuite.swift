import SGML
import Testing

@testable import HTML

@Suite
struct OnTimeUpdateAttributeTestSuite {

    @Test
    func rendersOnTimeUpdateValue() async throws {
        let tag = A {}
            .onTimeUpdate("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ontimeupdate="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
