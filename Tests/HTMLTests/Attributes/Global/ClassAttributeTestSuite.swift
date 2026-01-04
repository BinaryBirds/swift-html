import SGML
import Testing

@testable import HTML

@Suite
struct ClassAttributeTestSuite {

    @Test
    func rendersClassValue() async throws {
        let tag = A {}
            .setClass("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a class="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
