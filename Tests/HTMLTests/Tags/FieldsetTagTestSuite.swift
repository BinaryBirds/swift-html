import SGML
import Testing

@testable import HTML

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
