import SGML
import Testing

@testable import HTML

@Suite
struct HrTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Hr()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <hr>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
