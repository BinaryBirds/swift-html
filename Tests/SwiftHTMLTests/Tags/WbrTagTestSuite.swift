import Testing

@testable import SwiftHTML

@Suite
struct WbrTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Wbr("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <wbr>hello</wbr>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
