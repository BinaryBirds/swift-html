public struct Document: Sendable {

    public let type: DocType
    public let root: Element

    public init(
        type: DocType = .unspecified,
        root: Element
    ) {
        self.type = type
        self.root = root
    }
}
