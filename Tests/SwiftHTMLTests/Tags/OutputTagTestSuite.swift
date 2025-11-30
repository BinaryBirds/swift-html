import Testing

@testable import SwiftHTML

@Suite
struct OutputTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Output("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <output></output>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
