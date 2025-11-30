import Testing

@testable import SwiftHTML

@Suite
struct StrongTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Strong("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <strong>foo</strong>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
