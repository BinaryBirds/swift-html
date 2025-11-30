import Testing

@testable import SwiftHTML

@Suite
struct SummaryTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Summary("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <summary>foo</summary>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
