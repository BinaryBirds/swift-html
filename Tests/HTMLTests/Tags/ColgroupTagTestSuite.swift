import SGML
import Testing

@testable import HTML

@Suite
struct ColgroupTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Colgroup {
            Col()
                .span(2)
        }
        .span(4)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <colgroup span="4"><col span="2"></colgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
