import SGML
import Testing

@testable import HTML

@Suite
struct H5TagTestSuite {

    @Test
    func initialization() async throws {
        let tag = H5("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h5>Lorem ipsum</h5>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
