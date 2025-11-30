import Testing

@testable import SwiftHTML

@Suite
struct LegendTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Legend("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <legend>Lorem ipsum</legend>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
