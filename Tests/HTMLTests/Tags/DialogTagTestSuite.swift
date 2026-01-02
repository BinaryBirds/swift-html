import SGML
import Testing

@testable import HTML

@Suite
struct DialogTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dialog("test")
            .closedBy(.any)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dialog closedby="any">test</dialog>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
