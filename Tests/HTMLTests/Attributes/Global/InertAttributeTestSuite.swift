import SGML
import Testing

@testable import HTML

@Suite
struct InertAttributeTestSuite {

    @Test
    func rendersInertValue() async throws {
        let tag = A {}
            .inert()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a inert></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
