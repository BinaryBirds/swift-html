import Testing

@testable import DOM

@Suite
struct NodeTestSuite {

    @Test
    func standardNode() async throws {
        let node = StandardNode(
            name: "p"
        )

        #expect(node.name == "p")
        #expect(node.properties.isEmpty)
        #expect(node.children.isEmpty)
    }

    @Test
    func shortNode() async throws {
        let node = ShortNode(
            name: "br"
        )

        #expect(node.name == "br")
        #expect(node.properties.isEmpty)
    }

    @Test
    func textNode() async throws {

        let node = TextNode(
            value: "this is a text"
        )

        #expect(node.value == "this is a text")
    }

    @Test
    func commentNode() async throws {

        let node = CommentNode(
            value: "this is a comment"
        )

        #expect(node.value == "this is a comment")
    }

    @Test
    func listNode() async throws {

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

        #expect(node.items.count == 2)
    }
}
