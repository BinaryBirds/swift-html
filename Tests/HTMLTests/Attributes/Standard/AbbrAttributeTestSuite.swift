import SGML
import Testing

@testable import HTML

@Suite
struct AbbrAttributeTestSuite {

    @Test
    func rendersAbbrValue() async throws {
        let tag = Th {}
            .abbr("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <th abbr="value"></th>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
