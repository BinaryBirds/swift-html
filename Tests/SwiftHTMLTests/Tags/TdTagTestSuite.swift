import Testing

@testable import SwiftHTML

@Suite
struct TdTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Td("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <td></td>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
