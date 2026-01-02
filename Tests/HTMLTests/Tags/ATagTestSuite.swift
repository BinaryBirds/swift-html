import SGML
import Testing

@testable import HTML

@Suite
struct ATagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = A("link")
            .href("http://localhost/")
            .target(.blank)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a href="http://localhost/" target="_blank">link</a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithTag() async throws {
        let tag = A {
            P("Link")
        }
        .href("http://localhost/")
        .target(.blank)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a href="http://localhost/" target="_blank"><p>Link</p></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func selfTarget() async throws {
        let tag = A {
            P("Anchor")
        }
        .id("foo")
        .target(.self)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a id="foo" target="_self"><p>Anchor</p></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
