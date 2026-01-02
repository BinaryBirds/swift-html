import SGML
import Testing

@testable import HTML

@Suite
struct H6TagTestSuite {

    @Test
    func initialization() async throws {
        let tag = H6("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h6>Lorem ipsum</h6>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
