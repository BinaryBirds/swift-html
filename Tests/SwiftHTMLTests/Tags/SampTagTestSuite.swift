import Testing

@testable import SwiftHTML

@Suite
struct SampTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Samp("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <samp>Lorem ipsum</samp>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
