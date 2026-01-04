import SGML
import Testing

@testable import HTML

@Suite
struct OnProgressAttributeTestSuite {

    @Test
    func rendersOnProgressValue() async throws {
        let tag = A {}
            .onProgress("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onprogress="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
