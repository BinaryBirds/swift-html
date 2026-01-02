import SGML
import Testing

@testable import HTML

@Suite
struct TbodyTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Tbody("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <tbody></tbody>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
