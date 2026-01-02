import SGML
import Testing

@testable import HTML

@Suite
struct DlTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dl {
            Text("Lorem ipsum")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dl>Lorem ipsum</dl>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
