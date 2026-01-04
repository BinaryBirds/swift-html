import SGML
import Testing

@testable import HTML

@Suite
struct IsAttributeTestSuite {

    @Test
    func rendersIsValue() async throws {
        let tag = A {}
            .`is`("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a is="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
