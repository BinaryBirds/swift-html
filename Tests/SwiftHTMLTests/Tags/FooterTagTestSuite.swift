import Testing

@testable import SwiftHTML

@Suite
struct FooterTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Footer {

        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <footer></footer>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
