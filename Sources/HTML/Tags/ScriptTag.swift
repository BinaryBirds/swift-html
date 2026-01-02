import DOM
import SGML

/// The `<script>` tag is used to embed a client-side script (JavaScript).
///
/// The `<script>` element either contains scripting statements, or it points to an external script file through the src attribute.
///
/// Common uses for JavaScript are image manipulation, form validation, and dynamic changes of content.
public struct Script:
    HTMLTag,
    Attributes,
    /// attribute modifiers
    GlobalAttributesModifier,
    TypeAttributeModifier,
    SrcAttributeModifier,
    BlockingAttributeModifier,
    CrossoriginAttributeModifier,
    ReferrerPolicyAttributeModifier,
    IntegrityAttributeModifier,
    FetchpriorityAttributeModifier
{

    private enum Kind {
        case standard(String)
        case void
    }

    private var kind: Kind

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .metadata,
            .flow,
            .phrasing,
            //            Script-supporting element.
        ]
    }

    public init(
        _ contents: String
    ) {
        self.attributes = .init()
        self.kind = .standard(contents)
    }

    public init() {
        self.kind = .void
        self.attributes = .init()
    }

    public var node: Node {
        switch kind {
        case .standard(let contents):
            StandardNode(
                name: Self.name,
                properties: attributes.properties,
                children: [
                    TextNode(value: contents)
                ]
            )
        case .void:
            ShortNode(
                name: Self.name,
                properties: attributes.properties
            )
        }
    }

    public func javaScript() -> Self {
        setAttribute(key: .type, value: "application/javascript")
    }

    // MARK: -

    /// Specifies that the script is executed asynchronously (only for external scripts).
    public func async() -> Self {
        setAttribute(name: "async", value: nil)
    }

    /// Specifies that the script is executed when the page has finished parsing (only for external scripts).
    public func `defer`() -> Self {
        setAttribute(name: "defer", value: nil)
    }

    /// Specifies that the script should not be executed in browsers supporting ES2015 modules.
    public func nomodule(
        _ value: Bool
    ) -> Self {
        setAttribute(name: "nomodule", value: String(value))
    }
}
