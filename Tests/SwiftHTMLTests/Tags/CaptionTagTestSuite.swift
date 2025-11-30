import Testing

@testable import SwiftHTML

@Suite
struct CaptionTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Caption("Table 1.")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <caption>Table 1.</caption>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
