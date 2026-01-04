import SGML
import Testing

@testable import HTML

@Suite
struct NoValidateAttributeTestSuite {

    @Test
    func rendersNoValidateValue() async throws {
        let tag = Form {}
            .noValidate("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <form novalidate="value"></form>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
