import SGML
import Testing

@testable import HTML

@Suite
struct MediaAttributeTestSuite {

    @Test
    func rendersMediaValue() async throws {
        let tag = A {}
            .media("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a media="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
