import SGML
import Testing

@testable import HTML

@Suite
struct H4TagTestSuite {

    @Test
    func initialization() async throws {
        let tag = H4("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h4>Lorem ipsum</h4>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
