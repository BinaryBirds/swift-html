import SGML
import Testing

@testable import HTML

@Suite
struct FormNoValidateAttributeTestSuite {

    @Test
    func rendersFormNoValidateValue() async throws {
        let tag = Button {}
            .formNoValidate("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button formnovalidate="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
