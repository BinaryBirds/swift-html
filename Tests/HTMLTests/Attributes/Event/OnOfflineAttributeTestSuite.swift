import SGML
import Testing

@testable import HTML

@Suite
struct OnOfflineAttributeTestSuite {

    @Test
    func rendersOnOfflineValue() async throws {
        let tag = A {}
            .onOffline("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onoffline="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
