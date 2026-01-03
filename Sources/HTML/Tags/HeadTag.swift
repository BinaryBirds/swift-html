import SGML

/// The `<head>` element is a container for metadata (data about data) and is placed between the `<html>` tag and the `<body>` tag.
///
/// Metadata is data about the HTML document. Metadata is not displayed.
///
/// Metadata typically define the document title, character set, styles, scripts, and other meta information.
///
/// The following elements can go inside the `<head>` element:
///
/// - `<title>` (required in every HTML document)
/// - `<style>`
/// - `<base>`
/// - `<link>`
/// - `<meta>`
/// - `<script>`
/// - `<noscript>`
public struct Head:
    StandardTag,
    /// attribute modifiers
    GlobalAttributesModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The child elements contained within the tag.
    public var children: [Element]

    public init(
        elements: [any MetadataContent]
    ) {
        self.attributes = .init()
        self.children = elements

        assert(
            elements.count(where: { $0 is Base }) <= 1,
            "There can be only one `base` element in the head."
        )
        assert(
            elements.count(where: { $0 is Title }) <= 1,
            "There can be only one `title` element in the head."
        )
    }

    public init(
        @Builder<MetadataContent> _ block: () -> [any MetadataContent]
    ) {
        self.init(elements: block())
    }
}
