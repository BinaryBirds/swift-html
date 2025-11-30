import Testing

@testable import SwiftHTML

@Suite
struct DelTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Del {
            Text("Lorem ipsum")
        }
        .datetime("2009-10-11T01:25-07:00")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <del datetime="2009-10-11T01:25-07:00">Lorem ipsum</del>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
