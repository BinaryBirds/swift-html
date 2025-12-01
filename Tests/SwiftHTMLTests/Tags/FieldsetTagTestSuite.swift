import Testing

@testable import SwiftHTML

@Suite
struct FieldsetTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Fieldset("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <fieldset></fieldset>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
