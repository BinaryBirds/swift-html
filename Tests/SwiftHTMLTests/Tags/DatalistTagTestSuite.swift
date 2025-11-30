import Testing

@testable import SwiftHTML

@Suite
struct DatalistTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Datalist {

        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <datalist></datalist>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
