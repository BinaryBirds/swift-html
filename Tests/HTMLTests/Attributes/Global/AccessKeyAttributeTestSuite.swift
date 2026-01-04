import SGML
import Testing

@testable import HTML

@Suite
struct AccessKeyAttributeTestSuite {

    @Test
    func rendersAccessKeyValue() async throws {
        let tag = A {}
            .accessKey("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a accesskey="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
