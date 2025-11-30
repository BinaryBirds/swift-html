import Testing

@testable import SwiftHTML

@Suite
struct BdiTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Bdi("hello")
            .dir(.ltr)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <bdi dir="ltr">hello</bdi>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
