import DOM

public struct Text: Element {

    public var text: String

    public init(_ text: String) {
        self.text = text
    }

    public var node: Node {
        TextNode(value: text)
    }
}
