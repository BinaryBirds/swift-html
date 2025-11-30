import Testing

@testable import SwiftHTML

@Suite
struct BTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = B("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <b>hello</b>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
