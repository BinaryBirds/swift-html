import Testing

@testable import SwiftHTML

@Suite
struct HgroupTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Hgroup {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <hgroup></hgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
