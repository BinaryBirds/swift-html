import SGML

/// The `<canvas>` tag is used to draw graphics, on the fly, via scripting (usually JavaScript).
///
/// The `<canvas>` tag is transparent, and is only a container for graphics, you must use a script to actually draw the graphics.
///
/// Any text inside the `<canvas>` element will be displayed in browsers with JavaScript disabled and in browsers that do not support <canvas>.
public struct Canvas:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    // categories
    FlowContent,
    PhrasingContent,
    EmbeddedContent,
    PalpableContent
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
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
                Text(contents)
            ]
        )
    }

    public init(
        @Builder<Element> _ block: () -> [Element]
    ) {
        self.init(children: block())
    }
}
