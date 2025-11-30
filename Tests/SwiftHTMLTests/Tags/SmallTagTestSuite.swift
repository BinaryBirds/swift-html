import Testing

@testable import SwiftHTML

@Suite
struct SmallTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Small("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <small>foo</small>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
