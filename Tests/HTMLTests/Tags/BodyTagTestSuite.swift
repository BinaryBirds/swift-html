import SGML
import Testing

@testable import HTML

@Suite
struct BodyTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Body {
            P("hello")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <body><p>hello</p></body>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
