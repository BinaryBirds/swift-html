import SGML
import Testing

@testable import HTML

@Suite
struct AcceptCharsetAttributeTestSuite {

    @Test
    func rendersAcceptCharsetValue() async throws {
        let tag = Form {}
            .acceptCharset("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <form accept-charset="value"></form>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
