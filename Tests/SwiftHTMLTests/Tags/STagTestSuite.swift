import Testing

@testable import SwiftHTML

@Suite
struct STagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = S("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <s>foo</s>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
