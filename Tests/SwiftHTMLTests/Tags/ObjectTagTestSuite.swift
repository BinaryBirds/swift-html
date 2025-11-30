import Testing

@testable import SwiftHTML

@Suite
struct ObjectTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Object()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <object></object>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
