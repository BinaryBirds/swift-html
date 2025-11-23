public struct Urlset: StandardTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        xmlns: String? = nil,
        children: [Url]
    ) {
        let attributes: [Attribute] =
            if let xmlns {
                [
                    Xmlns(xmlns)
                ]
            }
            else {
                [
                    Xmlns()
                ]
            }
        self.attributes = .init(attributes)
        self.children = children
    }

    public init(
        xmlns: String? = nil,
        @Builder<Url> _ block: () -> [Url]
    ) {
        self.init(
            xmlns: xmlns,
            children: block()
        )
    }
}
