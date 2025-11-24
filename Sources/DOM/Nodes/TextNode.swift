public struct TextNode: Node {

    public var value: String
    public var ignoreRenderIndentation: Bool

    public init(
        value: String,
        ignoreRenderIndentation: Bool = false
    ) {
        self.value = value
        self.ignoreRenderIndentation = ignoreRenderIndentation
    }
}
