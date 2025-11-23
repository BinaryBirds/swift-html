import Testing

@testable import SGML

@Suite
struct RendererTestSuite {

    @Test
    func renderElement() async throws {
        let renderer = Renderer()

        struct Root: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
        }

        let doc = Document(
            type: .html,
            root: Root()
        )

        let expectation = #"""
            <!doctype html><root></root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func renderElementWithIndentation() async throws {
        let renderer = Renderer(
            indent: 4
        )

        struct Root: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
        }

        struct Branch: ShortTag {
            var attributes: AttributeStore = .init()
        }

        let doc = Document(
            type: .html,
            root: Root(
                children: [
                    Branch()
                ]
            )
        )

        let expectation = #"""
            <!doctype html>
            <root>
                <branch>
            </root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func renderHierarchyWithIndentation() async throws {
        let renderer = Renderer(
            indent: 2
        )

        struct Root: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
        }

        struct Branch: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
        }

        struct Leaf: StandardTag {
            var attributes: AttributeStore
            var children: [Element]

            init(
                text: String
            ) {
                self.attributes = .init()
                self.children = [
                    Text(text)
                ]
            }
        }

        let doc = Document(
            type: .html,
            root: Root(
                children: [
                    Branch(
                        children: [
                            Leaf(text: "foo")
                        ]
                    )
                ]
            )
        )

        let expectation = #"""
            <!doctype html>
            <root>
              <branch>
                <leaf>foo</leaf>
              </branch>
            </root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func renderMutation() async throws {
        let renderer = Renderer(
            indent: 2
        )

        struct Root: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
        }

        struct Branch: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []

            func add(chid: Element) -> Self {
                modify {
                    $0.children.append(chid)
                }
            }
        }

        struct Leaf: StandardTag {
            var attributes: AttributeStore
            var children: [Element]

            init(
                text: String
            ) {
                self.attributes = .init()
                self.children = [
                    Text(text)
                ]
            }
        }

        let doc = Document(
            type: .html,
            root: Root(
                children: [
                    Branch(
                        children: [
                            Leaf(text: "foo")
                        ]
                    )
                    .add(
                        chid: Leaf(
                            text: "bar"
                        )
                    )
                ]
            )
        )

        let expectation = #"""
            <!doctype html>
            <root>
              <branch>
                <leaf>foo</leaf>
                <leaf>bar</leaf>
              </branch>
            </root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func renderMutationChildren() async throws {
        let renderer = Renderer(
            indent: 2
        )

        struct Root: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element] = []
        }

        struct Branch: StandardTag {
            var attributes: AttributeStore = .init()
            var children: [Element]

            func add(chid: Element) -> Self {
                modify {
                    $0.children.append(chid)
                }
            }

            func removeChildren() -> Self {
                modify {
                    $0.children.removeAll()
                }
            }
        }

        struct Leaf: StandardTag {
            var attributes: AttributeStore
            var children: [Element]

            init(
                text: String
            ) {
                self.attributes = .init()
                self.children = [
                    Text(text)
                ]
            }
        }

        let doc = Document(
            type: .html,
            root: Root(
                children: [
                    Branch(
                        children: [
                            Leaf(text: "foo")
                        ]
                    )
                    .add(
                        chid: Leaf(
                            text: "bar"
                        )
                    )
                    .removeChildren()
                ]
            )
        )

        let expectation = #"""
            <!doctype html>
            <root>
              <branch></branch>
            </root>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
