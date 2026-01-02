import SGML
import Testing

@testable import HTML

@Suite
struct H1TagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = H1("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h1>Lorem ipsum</h1>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithChildren() async throws {
        let tag = H1 {
            A("foo")
                .id("bar")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h1><a id="bar">foo</a></h1>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
