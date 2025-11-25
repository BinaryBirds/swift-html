import Testing

@testable import SwiftHTML

@Suite
struct AreaTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Area()
            .shape(.rect)
            .alt("foo")
            .coords(0, 0, 82, 126)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area alt="foo" coords="0,0,82,126" shape="rect">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
