import SGML

/// The `<style>` tag is used to define style information (CSS) for a document.
///
/// Inside the `<style>` element you specify how HTML elements should render in a browser.
public struct Style:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    MediaAttributeModifier,
    BlockingAttributeModifier,
    // categories
    MetadataContent
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
        _ text: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(text)
        ]
    }
}
