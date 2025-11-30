import Testing

@testable import SwiftHTML

@Suite
struct ProgressTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Progress {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <progress></progress>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
