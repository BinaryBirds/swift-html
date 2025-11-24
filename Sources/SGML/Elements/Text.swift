import DOM

public struct Text: Element {

    public var text: String
    public var isRaw: Bool

    public init(
        _ text: String,
        isRaw: Bool = false
    ) {
        self.text = text
        self.isRaw = isRaw
    }

    public var node: Node {
        TextNode(
            value: text,
            ignoreRenderIndentation: isRaw
        )
    }
}
