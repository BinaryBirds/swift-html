import Testing

@testable import SwiftHTML

@Suite
struct BdoTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Bdo("hello", dir: .rtl)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <bdo dir="rtl">hello</bdo>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
