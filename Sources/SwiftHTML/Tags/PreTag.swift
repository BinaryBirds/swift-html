/// The `<pre>` tag defines preformatted text.
///
/// Text in a `<pre>` element is displayed in a fixed-width font, and the text preserves both spaces and line breaks.
/// The text will be displayed exactly as written in the HTML source code.
public struct Pre: StandardTag, GlobalAttributeModifier {

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
        _ contents: String
    ) {
        self.init(
            children: [
                Text(contents, isRaw: true)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
