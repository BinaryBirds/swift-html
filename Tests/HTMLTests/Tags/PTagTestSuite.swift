import SGML
import Testing

@testable import HTML

@Suite
struct PTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = P("Lorem ipsum")
            .class("foo")
            .addClass("bar")
        //            .addChild(Comment("foo"))

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="foo bar">Lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithChildren() async throws {
        let tag = P {
            Text("lorem")
            A("Hello, world!")
                .href("/")
            Text("ipsum")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p>lorem<a href="/">Hello, world!</a>ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
