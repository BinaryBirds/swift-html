import SGML
import Testing

@testable import HTML

@Suite
struct DetailsTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Details("")
            .open()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <details open></details>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
