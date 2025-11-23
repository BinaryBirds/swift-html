import SGML

/// The `<p>` tag defines a paragraph.
///
/// Browsers automatically add a single blank line before and after each `<p>` element.
///
/// **Tip:** Use CSS to style paragraphs.
public struct P: StandardTag {

    @resultBuilder
    public enum Builder {

        public static func buildBlock(
            _ elements: Element...
        ) -> [Element] {
            elements
        }
    }

    // MARK: -

    public var attributes: AttributeStore
    public internal(set) var children: [Element]

    public init(
        _ contents: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(contents)
        ]
    }

    public init(
        children: [Element]
    ) {
        self.attributes = .init()
        self.children = children
    }

    public init(
        @Builder _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
