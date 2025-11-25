import Testing

@testable import SwiftHTML

@Suite
struct AreaTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Area()
            .shape(.rect)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area shape="rect">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
