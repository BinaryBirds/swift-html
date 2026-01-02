import SGML
import Testing

@testable import HTML

@Suite
struct ContainerTestSuite {

    @Test
    func addChild() async throws {

        let tag = P("lorem ipsum")
            .addChild(Br())
            .addChild(Text("foo"))

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p>lorem ipsum<br>foo</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func addChildren() async throws {

        let tag = P("lorem ipsum")
            .addChildren(
                [
                    Text(" "),
                    Text("dolor"),
                    Text(" "),
                    Text("sit"),
                    Text(" "),
                    Text("amet"),
                    Text("."),
                ]
            )

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p>lorem ipsum dolor sit amet.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
