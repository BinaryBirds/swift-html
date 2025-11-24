import Testing

@testable import DOM

@Suite
struct RendererTestSuite {

    @Test
    func nodeRendering() async throws {
        let node = CommentNode(
            value: "this is a comment"
        )

        let expectation = #"""
            <!-- this is a comment -->
            """#

        let result = node.render()
        #expect(result == expectation)
    }

    @Test
    func commentNode() async throws {
        let renderer = Renderer()
        let node = CommentNode(
            value: "this is a comment"
        )

        let expectation = #"""
            <!-- this is a comment -->
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func groupNode() async throws {
        let renderer = Renderer()
        let node = ListNode(
            items: [
                TextNode(
                    value: "this is a text"
                ),
                ShortNode(
                    name: "br"
                ),
            ]
        )

        let expectation = #"""
            this is a text<br>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNode() async throws {
        let renderer = Renderer()
        let node = StandardNode(
            name: "p"
        )

        let expectation = #"""
            <p></p>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNodes() async throws {
        let renderer = Renderer(indent: 4)
        let node = StandardNode(
            name: "main",
            children: [
                StandardNode(
                    name: "div"
                )
            ]
        )

        let expectation = #"""
            <main>
                <div></div>
            </main>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNodeProperties() async throws {
        let renderer = Renderer()
        let node = StandardNode(
            name: "p",
            properties: [
                .init(name: "style", value: "")
            ]
        )

        let expectation = #"""
            <p style=""></p>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func shortNode() async throws {
        let renderer = Renderer()
        let node = ShortNode(
            name: "br"
        )

        let expectation = #"""
            <br>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func shortNodeAsChild() async throws {
        let renderer = Renderer(indent: 4)
        let node = StandardNode(
            name: "main",
            children: [
                ShortNode(
                    name: "br"
                )
            ]
        )

        let expectation = #"""
            <main>
                <br>
            </main>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func shortNodeProperties() async throws {
        let renderer = Renderer()
        let node = ShortNode(
            name: "input",
            properties: [
                .init(name: "type", value: "checkbox"),
                .init(name: "checked", value: nil),
            ]
        )

        let expectation = #"""
            <input type="checkbox" checked>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func textNode() async throws {
        let renderer = Renderer()
        let node = TextNode(
            value: "this is a text"
        )

        let expectation = #"""
            this is a text
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNodeWithText() async throws {
        let renderer = Renderer()
        let node = StandardNode(
            name: "p",
            children: [
                TextNode(
                    value: "this is a text"
                )
            ]
        )

        let expectation = #"""
            <p>this is a text</p>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNodeWithoutIndentation() async throws {
        let renderer = Renderer()
        let node = StandardNode(
            name: "div",
            children: [
                StandardNode(
                    name: "p",
                    children: [
                        TextNode(
                            value: "this is"
                        ),
                        ShortNode(
                            name: "br"
                        ),
                        TextNode(
                            value: "a text"
                        ),
                    ]

                )
            ]

        )

        let expectation = #"""
            <div><p>this is<br>a text</p></div>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNodeWithIndentation() async throws {
        let renderer = Renderer(
            indent: 4
        )
        let node = StandardNode(
            name: "div",
            children: [
                StandardNode(
                    name: "p",
                    children: [
                        TextNode(
                            value: "this is a text"
                        )
                    ]

                )
            ]

        )

        let expectation = #"""
            <div>
                <p>this is a text</p>
            </div>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNodeWithStartingTextIndentation() async throws {
        let renderer = Renderer(
            indent: 2
        )
        let node = StandardNode(
            name: "main",
            children: [
                StandardNode(
                    name: "div",
                    children: [
                        StandardNode(
                            name: "p",
                            children: [
                                TextNode(
                                    value: "this is"
                                ),
                                ShortNode(
                                    name: "br"
                                ),
                                TextNode(
                                    value: "a "
                                ),
                                StandardNode(
                                    name: "b",
                                    children: [
                                        TextNode(
                                            value: "text"
                                        )
                                    ]
                                ),
                            ]

                        )
                    ]
                )
            ]

        )

        let expectation = #"""
            <main>
              <div>
                <p>this is<br>a <b>text</b></p>
              </div>
            </main>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func standardNodeWithTextIndentation() async throws {
        let renderer = Renderer(
            indent: 2
        )
        let node = StandardNode(
            name: "main",
            children: [
                StandardNode(
                    name: "div",
                    children: [
                        StandardNode(
                            name: "p",
                            children: [
                                StandardNode(
                                    name: "span",
                                    children: [
                                        TextNode(
                                            value: "this is"
                                        ),
                                        ShortNode(
                                            name: "br"
                                        ),
                                        TextNode(
                                            value: "a "
                                        ),
                                    ]
                                ),
                                StandardNode(
                                    name: "b",
                                    children: [
                                        TextNode(
                                            value: "text"
                                        )
                                    ]
                                ),
                            ]
                        )
                    ]
                )
            ]

        )

        let expectation = #"""
            <main>
              <div>
                <p>
                  <span>this is<br>a </span>
                  <b>text</b>
                </p>
              </div>
            </main>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }

    @Test
    func preTagSupport() async throws {
        let renderer = Renderer(
            indent: 4
        )
        let node = StandardNode(
            name: "div",
            children: [
                StandardNode(
                    name: "pre",
                    children: [
                        TextNode(
                            value: #"""
                                func main() -> String {
                                    return "Hello, World!"
                                }
                                """#,
                            ignoreRenderIndentation: true
                        )
                    ]
                )
            ]

        )

        let expectation = #"""
            <div>
                <pre>func main() -> String {
                return "Hello, World!"
            }</pre>
            </div>
            """#

        let result = renderer.render(node: node)
        #expect(result == expectation)
    }
}
