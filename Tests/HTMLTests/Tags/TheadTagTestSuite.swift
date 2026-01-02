import SGML
import Testing

@testable import HTML

@Suite
struct TheadTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Thead("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <thead></thead>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
