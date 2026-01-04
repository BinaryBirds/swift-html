import SGML
import Testing

@testable import HTML

@Suite
struct OnSubmitAttributeTestSuite {

    @Test
    func rendersOnSubmitValue() async throws {
        let tag = A {}
            .onSubmit("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onsubmit="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
