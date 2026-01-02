import SGML
import Testing

@testable import HTML

@Suite
struct BlockquoteTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Blockquote("Hello, World!")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <blockquote>Hello, World!</blockquote>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func cite() async throws {
        let tag = Blockquote("Hello, World!")
            .cite("unknown")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <blockquote cite="unknown">Hello, World!</blockquote>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
