import SGML
import Testing

@testable import HTML

@Suite
struct OnClickAttributeTestSuite {

    @Test
    func rendersOnClickValue() async throws {
        let tag = A {}
            .onClick("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onclick="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
