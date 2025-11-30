import Testing

@testable import SwiftHTML

@Suite
struct BaseTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Base()
            .href("http://localhost/")
            .target(.blank)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <base href="http://localhost/" target="_blank">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
