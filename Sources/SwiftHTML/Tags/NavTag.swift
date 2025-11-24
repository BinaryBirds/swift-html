/// The `<nav>` tag defines a set of navigation links.
///
/// Notice that NOT all links of a document should be inside a `<nav>` element. The `<nav>` element is intended only for major block of navigation links.
///
/// Browsers, such as screen readers for disabled users, can use this element to determine whether to omit the initial rendering of this content.
public struct Nav: StandardTag, GlobalAttributeModifier {

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
