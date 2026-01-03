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
    CrossOriginAttributeModifier,
    ReferrerPolicyAttributeModifier,
    IntegrityAttributeModifier,
    FetchPriorityAttributeModifier,
    AsyncAttributeModifier,
    DeferAttributeModifier,
    NoModuleAttributeModifier
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
        setAttribute(
            key: StandardAttributeKey.type,
            value: "application/javascript"
        )
    }
}
