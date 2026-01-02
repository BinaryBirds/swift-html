import SGML

/// The `<style>` tag is used to define style information (CSS) for a document.
///
/// Inside the `<style>` element you specify how HTML elements should render in a browser.
public struct Style:
    HTMLStandardTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    MediaAttributeModifier,
    BlockingAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .metadata
        ]
    }

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

    /// Specifies the media type (text/css) of the `<style>` tag.
    public func css() -> Self {
        setAttribute(key: .type, value: "text/css")
    }
}
