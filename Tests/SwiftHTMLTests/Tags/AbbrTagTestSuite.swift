//@testable
import SwiftHTML
import Testing

@Suite
struct AbbrTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Abbr("foo")

        let renderer = Renderer()
        let doc = Document(type: .unspecified, root: tag)

        let expectation = #"""
            <abbr>foo</abbr>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
