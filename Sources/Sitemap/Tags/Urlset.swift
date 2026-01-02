import SGML

public struct Urlset: StandardTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        xmlns: String? = nil,
        children: [Url]
    ) {
        self.attributes = .init()
        self.children = children

        if let xmlns {
            self = addAttribute(Xmlns(xmlns))
        }
        else {
            self = addAttribute(Xmlns())
        }
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
