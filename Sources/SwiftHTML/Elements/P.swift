import SGML

/// The `<p>` tag defines a paragraph.
///
/// Browsers automatically add a single blank line before and after each `<p>` element.
///
/// **Tip:** Use CSS to style paragraphs.
public struct P: StandardTag, Mutable {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ elements: Element...
        ) -> [Element] {
            elements
        }
    }

    // MARK: -

    public internal(set) var attributeStore: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ contents: String
    ) {
        self.attributeStore = .init()
        self.children = [
            Text(contents)
        ]
    }

    public init(
        children: [Element]
    ) {
        self.attributeStore = .init()
        self.children = children
    }

    public init(
        @Builder _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
