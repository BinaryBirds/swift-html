import SGML
import Testing

@testable import HTML

@Suite
struct DtTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dt {
            Text("Lorem ipsum")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dt>Lorem ipsum</dt>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
