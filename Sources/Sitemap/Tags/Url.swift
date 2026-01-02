import SGML

public struct Url: StandardTag {

    public var attributes: AttributeStore
    public var children: [Element]

    public init(
        children: [UrlContent]
    ) {
        self.attributes = .init()
        self.children = children
    }

    public init(
        @Builder<UrlContent> _ block: () -> [UrlContent]
    ) {
        self.init(children: block())
    }
}
