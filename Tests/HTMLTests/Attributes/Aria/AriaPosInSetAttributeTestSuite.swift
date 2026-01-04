import SGML
import Testing

@testable import HTML

@Suite
struct AriaPosInSetAttributeTestSuite {

    @Test
    func rendersAriaPosInSetValue() async throws {
        let tag = A {}
            .ariaPosInSet("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-posinset="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
