import DOM

public struct Comment: Element {

    public var value: String

    public init(_ value: String) {
        self.value = value
    }

    public var node: Node {
        CommentNode(value: value)
    }
}
