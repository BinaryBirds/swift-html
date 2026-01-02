import SGML

/// G tag.
///
/// https://developer.mozilla.org/en-US/docs/Web/SVG/Element/G
public struct G: SVGTag {

    public var attributes: AttributeStore
    public var children: [Element]

    init(
        attributes: AttributeStore = .init(),
        children: [Element]
    ) {
        self.attributes = attributes
        self.children = children
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
