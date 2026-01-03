import SGML
import Testing

@testable import HTML

@Suite
struct SourceTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Source()
            .src("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <source src="foo">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func basics() async throws {
        let tag = Source()
            .srcSet("img.png")
            .media("(prefers-color-scheme: dark)")

        let renderer = Renderer()
        let doc = Document(root: tag)
        let expectation = #"""
            <source srcset="img.png" media="(prefers-color-scheme: dark)">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
