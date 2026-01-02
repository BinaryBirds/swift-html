import SGML
import Testing

@testable import HTML

@Suite
struct SectionTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Section("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <section></section>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
