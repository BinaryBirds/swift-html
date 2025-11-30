import Testing

@testable import SwiftHTML

@Suite
struct VarTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Var("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <var>hello</var>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
