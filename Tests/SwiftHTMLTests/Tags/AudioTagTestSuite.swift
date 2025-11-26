import Testing

@testable import SwiftHTML

@Suite
struct AudioTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Audio {
            Text("Lorem ipsum.")
        }
        .controls()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio controls>Lorem ipsum.</audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
