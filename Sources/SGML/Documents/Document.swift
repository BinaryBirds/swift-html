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

    public func render(
        indent: UInt8 = 0
    ) -> String {
        let renderer = Renderer(indent: indent)
        return renderer.render(document: self)
    }
}
