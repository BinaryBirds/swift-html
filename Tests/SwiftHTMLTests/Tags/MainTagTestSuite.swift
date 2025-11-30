import Testing

@testable import SwiftHTML

@Suite
struct MainTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Main {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <main></main>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
