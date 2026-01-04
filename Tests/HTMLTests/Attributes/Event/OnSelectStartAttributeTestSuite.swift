import SGML
import Testing

@testable import HTML

@Suite
struct OnSelectStartAttributeTestSuite {

    @Test
    func rendersOnSelectStartValue() async throws {
        let tag = A {}
            .onSelectStart("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onselectstart="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
