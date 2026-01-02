import SGML
import Testing

@testable import HTML

@Suite
struct DivTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Div {
            Text("Lorem ipsum")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <div>Lorem ipsum</div>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
