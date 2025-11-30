import Testing

@testable import SwiftHTML

@Suite
struct H2TagTestSuite {

    @Test
    func initialization() async throws {
        let tag = H2("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h2>Lorem ipsum</h2>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
